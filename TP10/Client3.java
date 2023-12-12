import java.io.*;
import org.apache.http.HttpEntity;
import org.apache.http.client.*;
import org.apache.http.client.methods.*;
import org.apache.http.impl.client.*;
import javax.json.*;
import javax.json.JsonArray;
import javax.json.JsonObject;

public class Client3
{
	public static void main( String[] args )
	{
		try {
			if (args.length == 0) {
            			System.out.println("Aucun argument");
				System.exit(1);
        		}
			CloseableHttpClient client = HttpClients.createDefault();
			String url = "http://" + args[0];
			HttpGet request = new HttpGet(url);

			System.out.println( "Executing request " + request.getRequestLine() );
			CloseableHttpResponse resp = client.execute(request);
	
			System.out.println( "Response Line: " + resp.getStatusLine() );
			System.out.println( "Response Code: " + resp.getStatusLine().getStatusCode() );
			
			InputStreamReader isr = new InputStreamReader( resp.getEntity().getContent() );
			JsonReader reader = Json.createReader(isr);
			JsonObject jsonObject = reader.readObject();
			JsonArray tab = jsonObject.getJsonArray("Ratings");
			for( int i=0; i<tab.size(); i++ )
			{
				JsonObject ji = tab.getJsonObject(i);

				String source = ji.getString("Source");
				if ("Rotten Tomatoes".equals(source)) {
					String valeur = ji.getString("Value");
					double valeurEnNombre = Double.parseDouble(valeur.replace("%", ""));
					String categorie;
                       			if (valeurEnNombre < 20) {
                            			categorie = "Nul";
                        		} else if (valeurEnNombre >= 20 && valeurEnNombre <= 50) {
                            			categorie = "Bof";
                        		} else if (valeurEnNombre > 50 && valeurEnNombre <= 70) {
                            			categorie = "Bien";
                        		} else {
                            			categorie = "Très bien";
                        		}
					System.out.println("Avis global du Film : " + categorie);
                        		break; 
				}
			}
			

			reader.close();
			isr.close();
		} 
		catch ( Exception ex ) {
			System.out.println( "erreur!" );
			ex.printStackTrace();
		}
	}
}

