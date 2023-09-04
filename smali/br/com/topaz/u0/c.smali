.class public Lbr/com/topaz/u0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

.field private b:Lbr/com/topaz/u0/a;


# direct methods
.method public constructor <init>(Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/u0/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/u0/c;->a:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    iput-object p2, p0, Lbr/com/topaz/u0/c;->b:Lbr/com/topaz/u0/a;

    return-void
.end method


# virtual methods
.method public a([BLjava/lang/String;[B)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/u0/c;->a:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    invoke-interface {v0, p1, p2, p3}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->a([BLjava/lang/String;[B)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/u0/c;->a:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    invoke-interface {v0, p1, p2}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a([BLjava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/u0/c;->b:Lbr/com/topaz/u0/a;

    iget-object v1, p0, Lbr/com/topaz/u0/c;->a:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    invoke-interface {v1, p1, p2}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->a([BLjava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lbr/com/topaz/u0/a;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a([B[B)[B
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/u0/c;->a:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    invoke-interface {v0, p1, p2}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->a([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public b([BLjava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/u0/c;->a:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    invoke-interface {v0, p1, p2}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->b([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method
