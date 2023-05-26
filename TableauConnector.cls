

public class TableauConnector {
    // Tableau Server or Tableau Online base URL
    private static final String TABLEAU_BASE_URL = 'https://your-tableau-server-url';

    // Tableau API version
    private static final String TABLEAU_API_VERSION = '3.8';

    // Tableau site ID
    private static final String TABLEAU_SITE_ID = 'your-tableau-site-id';

    // Tableau authentication token
    private static final String TABLEAU_AUTH_TOKEN = 'your-tableau-auth-token';

    public static void main() {
        // Example: Get list of projects
        String projectsUrl = TABLEAU_BASE_URL + '/api/' + TABLEAU_API_VERSION + '/sites/' + TABLEAU_SITE_ID + '/projects';
        
        HttpRequest request = new HttpRequest();
        request.setEndpoint(projectsUrl);
        request.setHeader('Content-Type', 'application/json');
        request.setHeader('Accept', 'application/json');
        request.setHeader('X-Tableau-Auth', TABLEAU_AUTH_TOKEN);
        request.setMethod('GET');
        
        HttpResponse response = new Http().send(request);
        
        if (response.getStatusCode() == 200) {
            // Successful API call
            String responseBody = response.getBody();
            System.debug(responseBody);
            
            // Process the response as needed
            // ...
        } else {
            // API call failed
            String errorMessage = 'API call failed with status code: ' + response.getStatusCode();
            System.debug(errorMessage);
            
            // Handle the error as needed
            // ...
        }
    }
}
