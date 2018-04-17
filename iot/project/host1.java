import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.io.*;
import java.util.*;


public class host1 {

    public static void main(String srgs[]) {

	int count = 0;
	InputStream is =null;
	InputStreamReader isr = null;
	BufferedReader br = null;


	    //hard code to use port 8080
	    try (ServerSocket serverSocket = new ServerSocket(8080)) {

		System.out.println("I'm waiting here: " + serverSocket.getLocalPort());

		while (true) {

		    try {
			Socket socket = serverSocket.accept();

			count++;
			System.out.println("#" + count + " from "
				+ socket.getInetAddress() + ":"
				+ socket.getPort());
			is = socket.getInputStream();
			isr = new InputStreamReader(is);
			br = new BufferedReader(isr);   

			BufferedWriter bw = new BufferedWriter(new FileWriter("log.txt",true));


			String receiveData = "";
			receiveData = br.readLine();        // 서버로부터 데이터 한줄 읽음
			System.out.println("서버로부터 받은 데이터 : " + receiveData);
			bw.write(receiveData);
			bw.newLine();

			/*  move to background thread
			    OutputStream outputStream = socket.getOutputStream();
			    try (PrintStream printStream = new PrintStream(outputStream)) {
			    printStream.print("Hello from Raspberry Pi, you are #" + count);
			    }
			 */

			HostThread myHostThread = new HostThread(socket, count);
			myHostThread.start();
			bw.close();
		    } catch (IOException ex) {
			System.out.println(ex.toString());
		    }
		}
	    } catch (IOException ex) {
		System.out.println(ex.toString());
	    }
    }

    private static class HostThread extends Thread {

	private Socket hostThreadSocket;
	int cnt;

	HostThread(Socket socket, int c) {
	    hostThreadSocket = socket;
	    cnt = c;
	}

	@Override
	    public void run() {

		OutputStream outputStream;
		try {
		    outputStream = hostThreadSocket.getOutputStream();

		    try (PrintStream printStream = new PrintStream(outputStream)) {
			printStream.print("Hello from Raspberry Pi in background thread, you are #" + cnt);
		    }
		} catch (IOException ex) {
		    Logger.getLogger(host.class.getName()).log(Level.SEVERE, null, ex);
		} finally {
		    try {
			hostThreadSocket.close();
		    } catch (IOException ex) {
			Logger.getLogger(host.class.getName()).log(Level.SEVERE, null, ex);
		    }
		}
	    }
    }
}

