Feature: Register
  As a user
  I want to create account
  So i can create new account

  Scenario Outline: Register nama, nik, tanggal lahir, alamat, email, jenis kelamin, password
    Given I set url register
    When I input nama "<nama>"
    And I input nik "<nik>"
    And I input tanggal lahir "<dob>"
    And I input alamat "<alamat>"
    And I input email "<email>"
    And I input jenis kelamin "<gender>"
    And I input password "<password>" and do request
    Then I will get status code <statuscode>
    Examples:
    |nama|nik|dob|alamat|email|gender|password|statuscode|
    |Adi Subakti|3245621457853789|1995-05-05|Jln Jendral Sudirman|subakti@gmail.com|Laki-Laki|12345|200|
    | | | | | | | |400|
    |Adi Subakti| | | | | | |400|
    |Adi Subakti|3245621457853789| | | | | |400|
    |Adi Subakti|3245621457853789|1995-05-05| | | | |400|
    |Adi Subakti|3245621457853789|1995-05-05|Jln Jendral Sudirman| | | |400|
    |Adi Subakti|3245621457853789|1995-05-05|Jln Jendral Sudirman|subakti@gmail.com| | |400|
    |Adi Subakti|3245621457853789|1995-05-05|Jln Jendral Sudirman|subakti@gmail.com|Laki-Laki| |400|
    | | | | | | |12345|400|
    | | | | | |Laki-Laki|12345|400|
    | | | | |subakti@gmail.com|Laki-Laki|12345|400|
    | | | |Jln Jendral Sudirman|subakti@gmail.com|Laki-Laki|12345|400|
    | | |1995-05-05|Jln Jendral Sudirman|subakti@gmail.com|Laki-Laki|12345|400|
    | |3245621457853789|1995-05-05|Jln Jendral Sudirman|subakti@gmail.com|Laki-Laki|12345|400|
    |AAAAAAA|123|0000-00-00|Jln|@gmail.com|Pria|123|400|
    |AAAAAAA| | | | | | |400|
    |AAAAAAA|123| | | | | |400|
    |AAAAAAA|123|0000-00-00| | | | |400|
    |AAAAAAA|123|0000-00-00|Jln| | | |400|
    |AAAAAAA|123|0000-00-00|Jln|@gmail.com| | |400|
    |AAAAAAA|123|0000-00-00|Jln|@gmail.com|Pria| |400|
    | | | | | | |123|400|
    | | | | | |Pria|123|400|
    | | | | |@gmail.com|Pria|123|400|
    | | | |Jln|@gmail.com|Pria|123|400|
    | | |0000-00-00|Jln|@gmail.com|Pria|123|400|
    | |123|0000-00-00|Jln|@gmail.com|Pria|123|400|
    |AAAAAAA|3245621457853789|1995-05-05|Jln Jendral Sudirman|subakti@gmail.com|Laki-Laki|12345|200|
    |AAAAAAA|123|1995-05-05|Jln Jendral Sudirman|subakti@gmail.com|Laki-Laki|12345|400|
    |AAAAAAA|123|0000-00-00|Jln Jendral Sudirman|subakti@gmail.com|Laki-Laki|12345|400|
    |AAAAAAA|123|0000-00-00|Jln|subakti@gmail.com|Laki-Laki|12345|400|
    |AAAAAAA|123|0000-00-00|Jln|@gmail.com|Laki-Laki|12345|400|
    |AAAAAAA|123|0000-00-00|Jln|@gmail.com|Pria|12345|400|
    |Adi Subakti|3245621457853789|1995-05-05|Jln Jendral Sudirman|subakti@gmail.com|Laki-Laki|123|400|
    |Adi Subakti|3245621457853789|1995-05-05|Jln Jendral Sudirman|subakti@gmail.com|Pria|123|400|
    |Adi Subakti|3245621457853789|1995-05-05|Jln Jendral Sudirman|@gmail.com|Pria|123|400|
    |Adi Subakti|3245621457853789|1995-05-05|Jln|@gmail.com|Pria|123|400|
    |Adi Subakti|3245621457853789|0000-00-00|Jln|@gmail.com|Pria|123|400|
    |Adi Subakti|123|0000-00-00|Jln|@gmail.com|Pria|123|400|
