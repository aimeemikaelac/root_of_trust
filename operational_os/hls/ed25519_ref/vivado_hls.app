<project xmlns="com.autoesl.autopilot.project" name="ed25519_ref" top="crypto_sign">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="0" lastCsimMode="0" compiler="true"/>
    </Simulation>
    <files xmlns="">
        <file name="../src/ed25519_ref_tb.c" sc="0" tb="1" cflags=" "/>
        <file name="ed25519_ref/src/sign.c" sc="0" tb="false" cflags=""/>
        <file name="ed25519_ref/src/sha512.h" sc="0" tb="false" cflags=""/>
        <file name="ed25519_ref/src/sha512.c" sc="0" tb="false" cflags=""/>
        <file name="ed25519_ref/src/sc25519.h" sc="0" tb="false" cflags=""/>
        <file name="ed25519_ref/src/sc25519.c" sc="0" tb="false" cflags=""/>
        <file name="ed25519_ref/src/md_helper.i" sc="0" tb="false" cflags=""/>
        <file name="ed25519_ref/src/ge25519_base.data" sc="0" tb="false" cflags=""/>
        <file name="ed25519_ref/src/ge25519.h" sc="0" tb="false" cflags=""/>
        <file name="ed25519_ref/src/ge25519.c" sc="0" tb="false" cflags=""/>
        <file name="ed25519_ref/src/fixedint.h" sc="0" tb="false" cflags=""/>
        <file name="ed25519_ref/src/fe25519.h" sc="0" tb="false" cflags=""/>
        <file name="ed25519_ref/src/fe25519.c" sc="0" tb="false" cflags=""/>
        <file name="ed25519_ref/src/crypto_uint32.h" sc="0" tb="false" cflags=""/>
        <file name="ed25519_ref/src/crypto_sign.h" sc="0" tb="false" cflags=""/>
        <file name="ed25519_ref/src/crypto_int32.h" sc="0" tb="false" cflags=""/>
        <file name="ed25519_ref/src/crypto_hash_sha512.h" sc="0" tb="false" cflags=""/>
        <file name="ed25519_ref/src/api.h" sc="0" tb="false" cflags=""/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

