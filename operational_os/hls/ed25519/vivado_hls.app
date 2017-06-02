<project xmlns="com.autoesl.autopilot.project" top="ed25519_sign" name="ed25519">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="0" lastCsimMode="0" compiler="true"/>
    </Simulation>
    <files xmlns="">
        <file name="../src/ed25519_tb.cpp" sc="0" tb="1" cflags=" "/>
        <file name="ed25519/src/verify.cpp" sc="0" tb="false" cflags=""/>
        <file name="ed25519/src/sign.cpp" sc="0" tb="false" cflags=""/>
        <file name="ed25519/src/sha512.h" sc="0" tb="false" cflags=""/>
        <file name="ed25519/src/sha512.cpp" sc="0" tb="false" cflags=""/>
        <file name="ed25519/src/seed.cpp" sc="0" tb="false" cflags=""/>
        <file name="ed25519/src/sc.h" sc="0" tb="false" cflags=""/>
        <file name="ed25519/src/sc.cpp" sc="0" tb="false" cflags=""/>
        <file name="ed25519/src/precomp_data.h" sc="0" tb="false" cflags=""/>
        <file name="ed25519/src/keypair.cpp" sc="0" tb="false" cflags=""/>
        <file name="ed25519/src/key_exchange.cpp" sc="0" tb="false" cflags=""/>
        <file name="ed25519/src/ge.h" sc="0" tb="false" cflags=""/>
        <file name="ed25519/src/ge.cpp" sc="0" tb="false" cflags=""/>
        <file name="ed25519/src/fixedint.h" sc="0" tb="false" cflags=""/>
        <file name="ed25519/src/fe.h" sc="0" tb="false" cflags=""/>
        <file name="ed25519/src/fe.cpp" sc="0" tb="false" cflags=""/>
        <file name="ed25519/src/ed25519.h" sc="0" tb="false" cflags=""/>
        <file name="ed25519/src/add_scalar.cpp" sc="0" tb="false" cflags=""/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

