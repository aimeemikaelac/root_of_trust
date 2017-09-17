<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="com.autoesl.autopilot.project" name="secure_enclave_key_store" top="secure_enclave_key_store">
  <files>
    <file name="../src/secure_enclave_key_store_tb.cpp" sc="0" tb="1" cflags=" -I../src  -I../../../../../usr/local/ssl/include  -ldl -lcrypto -lssl -L/usr/local/ssl/lib/."/>
    <file name="secure_enclave_key_store/src/secure_enclave_key_store_main.h" sc="0" tb="false" cflags="-Isecure_enclave_key_store/src"/>
    <file name="secure_enclave_key_store/src/secure_enclave_key_store_main.cpp" sc="0" tb="false" cflags="-Isecure_enclave_key_store/src"/>
    <file name="secure_enclave_key_store/Debug/aes.cpp" sc="0" tb="false" cflags="-Isecure_enclave_key_store/src"/>
  </files>
  <solutions>
    <solution name="solution1" status="active"/>
  </solutions>
  <includePaths/>
  <libraryPaths/>
  <Simulation>
    <SimFlow name="csim" setup="true" csimMode="0" lastCsimMode="0"/>
  </Simulation>
</project>
