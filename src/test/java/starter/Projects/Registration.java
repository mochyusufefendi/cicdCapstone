package starter.Projects;

import org.json.simple.JSONObject;

import static net.serenitybdd.rest.SerenityRest.*;

public class Registration {

    private String url;
    private JSONObject body = new JSONObject();

    public void setUrlregister() { url = "http://ec2-174-129-166-8.compute-1.amazonaws.com/signup";}

    public JSONObject inputnama(String nama){
        body.put("nama", nama);
        return body;
    }
    public JSONObject inputnik(String nik){
        body.put("nik", nik);
        return body;
    }
    public JSONObject inputdob(String dob){
        body.put("dob", dob);
        return body;
    }
    public JSONObject inputalamat(String alamat){
        body.put("alamat", alamat);
        return body;
    }
    public JSONObject inputemail(String email){
        body.put("email", email);
        return body;
    }
    public JSONObject inputgender(String gender){
        body.put("gender", gender);
        return body;
    }
    public JSONObject inputpassword(String password){
        body.put("password", password);
        return body;
    }
    public void registerData(){
        given().header("Content-Type", "application/json").body(body.toJSONString());
        when().post(url);
    }
    public void statusCode(int statuscode) { then().statusCode(statuscode);}
}
