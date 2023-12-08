import java.io.*;
import org.apache.http.HttpEntity;
import org.apache.http.client.*;
import org.apache.http.client.methods.*;
import org.apache.http.impl.client.*;

public class Client1
{
	public static void main( String[] args )
	{
		try {
			CloseableHttpClient client = HttpClients.createDefault();
			String url = "https://" + args[0];
			HttpGet request = new HttpGet(url);
		}
		catch ( Exception ex ) {
			System.out.println( "erreur!" );
			ex.printStackTrace();
		}
	}
}

