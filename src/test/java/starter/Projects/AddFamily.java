package starter.Projects;

import org.json.simple.JSONObject;
import static net.serenitybdd.rest.SerenityRest.given;
import static net.serenitybdd.rest.SerenityRest.then;

public class AddFamily {

    private String url;
    private JSONObject body = new JSONObject();

    public void setUrlAddFamily() { url = "http://ec2-174-129-166-8.compute-1.amazonaws.com/:id";}

    public void reqGetFamily() { given().when().get(url);}

    public void message200() { then().statusCode(200);}
}
