import java.io.*;
import java.net.*;

public class Clienthttp
{
	public static void main( String[] args )
	{
		try {
			String hostName = args[0];
			Socket socket = new Socket( hostName, 80 );
			OutputStreamWriter osw = new OutputStreamWriter( socket.getOutputStream() );
			InputStreamReader isw = new InputStreamReader( socket.getInputStream() );
			
			BufferedWriter bufOut = new BufferedWriter( osw );
			BufferedReader bufIn = new BufferedReader( isw );
			
			String request = "GET / HTTP/1.0\r\n\r\n"; //requete HTTP
			bufOut.write( request, 0, request.length() );
			bufOut.flush();
			
			String line = bufIn.readLine(); //lecture ligne par ligne
			while( line !=null ){
				System.out.println( line );
				line = bufIn.readLine();
			}
			bufIn.close();
			bufOut.close();
			socket.close();	
		}	
		catch ( Exception ex ) {
			System.out.println( "erreur!" );
			ex.printStackTrace();
		}
	}
}
