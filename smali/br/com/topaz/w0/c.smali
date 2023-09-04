.class public Lbr/com/topaz/w0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lbr/com/topaz/w0/b;
    .locals 5

    new-instance v0, Lbr/com/topaz/u0/s;

    invoke-direct {v0}, Lbr/com/topaz/u0/s;-><init>()V

    new-instance v1, Lbr/com/topaz/l/u;

    invoke-direct {v1, p0, v0}, Lbr/com/topaz/l/u;-><init>(Landroid/content/Context;Lbr/com/topaz/u0/r;)V

    new-instance v2, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;

    invoke-direct {v2}, Lbr/com/topaz/heartbeat/crypto/MidCryptImpl;-><init>()V

    new-instance v3, Lbr/com/topaz/l/m;

    invoke-direct {v3, p0}, Lbr/com/topaz/l/m;-><init>(Landroid/content/Context;)V

    new-instance v4, Lbr/com/topaz/l/n;

    invoke-direct {v4, v3, v2, v0}, Lbr/com/topaz/l/n;-><init>(Lbr/com/topaz/l/m;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/u0/r;)V

    new-instance v3, Lbr/com/topaz/l/c;

    invoke-direct {v3, v1, v2, v0, v4}, Lbr/com/topaz/l/c;-><init>(Lbr/com/topaz/l/t;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/u0/r;Lbr/com/topaz/l/n;)V

    new-instance v0, Lbr/com/topaz/heartbeat/wrapper/IdentificatorImpl;

    invoke-direct {v0, p0, v3}, Lbr/com/topaz/heartbeat/wrapper/IdentificatorImpl;-><init>(Landroid/content/Context;Lbr/com/topaz/l/c;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lbr/com/topaz/w0/c;->a(Landroid/content/Context;)Lbr/com/topaz/w0/b;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lbr/com/topaz/w0/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lbr/com/topaz/w0/b;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lbr/com/topaz/u0/h;

    invoke-direct {v0}, Lbr/com/topaz/u0/h;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lbr/com/topaz/u0/h;->e([B)[B

    move-result-object p0

    new-instance v0, Lbr/com/topaz/u0/a;

    invoke-direct {v0}, Lbr/com/topaz/u0/a;-><init>()V

    invoke-virtual {v0, p0}, Lbr/com/topaz/u0/a;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
