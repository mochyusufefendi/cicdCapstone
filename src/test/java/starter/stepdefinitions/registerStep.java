package starter.stepdefinitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import net.thucydides.core.annotations.Steps;
import starter.Projects.Registration;

public class registerStep {
    @Steps
    Registration registration;

    @Given("I set url register")
    public void iSetUrlRegister() {
        registration.setUrlregister();
    }

    @When("I input nama {string}")
    public void iInputNama(String arg0) {
        registration.inputnama(arg0);
    }

    @And("I input nik {string}")
    public void iInputNik(String arg0) {
        registration.inputnik(arg0);
    }

    @And("I input tanggal lahir {string}")
    public void iInputTanggalLahir(String arg0) {
        registration.inputdob(arg0);
    }

    @And("I input alamat {string}")
    public void iInputAlamat(String arg0) {
        registration.inputalamat(arg0);
    }

    @And("I input email {string}")
    public void iInputEmail(String arg0) {
        registration.inputemail(arg0);
    }

    @And("I input jenis kelamin {string}")
    public void iInputJenisKelamin(String arg0) {
        registration.inputgender(arg0);
    }

    @Then("I will get status code {int}")
    public void iWillGetStatusCode(int statuscode) {
    }

    @And("I input password {string} and do request")
    public void iInputPasswordAndDoRequest(String arg0) {
        registration.registerData();
    }
}