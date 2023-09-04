.class public Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/heartbeat/crypto/MidCrypt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "mcrypt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "OFDHB:031"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synchronized native function14(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static synchronized native function18(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static synchronized native function24(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static synchronized native function42(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static synchronized native function43([B)Ljava/lang/String;
.end method

.method private static synchronized native function44(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method private static synchronized native function45([BLjava/lang/String;)[B
.end method

.method private static synchronized native function47(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static synchronized native function48(Ljava/lang/String;)Z
.end method

.method private static native function49()Z
.end method

.method private static synchronized native function50([BLjava/lang/String;)[B
.end method

.method private static synchronized native function51(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static synchronized native function52(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static synchronized native function53([BLjava/lang/String;)[B
.end method

.method private static synchronized native function55([BLjava/lang/String;[B)I
.end method

.method private static synchronized native function56([B[B)[B
.end method


# virtual methods
.method public a([BLjava/lang/String;[B)I
    .locals 0

    :try_start_0
    invoke-static {p1, p2, p3}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->function55([BLjava/lang/String;[B)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "OFDHB:031"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "mid2"

    invoke-static {p1, v0}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->function18(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "OFDHB:031"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-static {p1, p2, p3}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->function14(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "OFDHB:031"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public a([B)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p1}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->function43([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "OFDHB:031"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public a()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->function49()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "OFDHB:031"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    :try_start_0
    invoke-static {p1, p2}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->function44(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "OFDHB:031"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public a([BLjava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    :try_start_0
    invoke-static {p1, p2}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->function50([BLjava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "OFDHB:031"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public a([B[B)[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    :try_start_0
    invoke-static {p1, p2}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->function56([B[B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "OFDHB:031"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-static {p1, p2}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->function52(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "OFDHB:031"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {p1}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->function48(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "OFDHB:031"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b([BLjava/lang/String;)[B
    .locals 0

    :try_start_0
    invoke-static {p1, p2}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->function53([BLjava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "OFDHB:031"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p1}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->function47(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "OFDHB:031"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-static {p1, p2}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->function51(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "OFDHB:031"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method public c([BLjava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    :try_start_0
    invoke-static {p1, p2}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->function45([BLjava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "OFDHB:031"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "mid2"

    invoke-static {p1, v0}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->function24(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "OFDHB:031"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "mid1"

    invoke-static {p1, v0}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->function18(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "OFDHB:031"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p1}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->function42(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "OFDHB:031"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public function99()V
    .locals 4

    const-string v0, "11111111"

    invoke-virtual {p0, v0}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->g(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "22222222"

    invoke-virtual {p0, v1}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->d(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, v0}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->f(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, v1}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->f(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "function99"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->a([B)Ljava/lang/String;

    const-string v1, "function99function99function99function99function99function99function99function99function99function99"

    invoke-virtual {p0, v1}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->c(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->a()Z

    invoke-virtual {p0, v0}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->b(Ljava/lang/String;)Z

    const-string v1, "11111111|22222222"

    invoke-virtual {p0, v0, v1}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "function99function99function99function99"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->a([BLjava/lang/String;)[B

    invoke-virtual {p0, v2, v1}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->c([BLjava/lang/String;)[B

    return-void
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "mid1"

    invoke-static {p1, v0}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;->function24(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "OFDHB:031"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p1, ""

    :goto_0
    return-object p1
.end method
