.class public Lbr/com/topaz/heartbeat/crypto/FileDecryption;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/k/d;


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

    const-string v1, "OFDHB:032"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synchronized native function46([B[B[B)[B
.end method


# virtual methods
.method public a([B)[B
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [B

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    new-instance v2, Lbr/com/topaz/u0/s;

    invoke-direct {v2}, Lbr/com/topaz/u0/s;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lbr/com/topaz/u0/s;->a(I)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {p1, v1, v2}, Lbr/com/topaz/heartbeat/crypto/FileDecryption;->function46([B[B[B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "OFDHB:032"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :array_0
    .array-data 1
        0x7ft
        0x4et
        0x2ft
        -0x29t
        0x34t
        -0x7at
        -0x63t
        -0x3dt
        0x2dt
        0x47t
        -0x63t
        -0x61t
        0xct
        -0x60t
        -0x76t
        -0x78t
    .end array-data
.end method
