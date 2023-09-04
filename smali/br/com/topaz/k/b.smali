.class public Lbr/com/topaz/k/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

.field private b:Lbr/com/topaz/w0/b;


# direct methods
.method public constructor <init>(Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/w0/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/k/b;->a:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    iput-object p2, p0, Lbr/com/topaz/k/b;->b:Lbr/com/topaz/w0/b;

    return-void
.end method


# virtual methods
.method public a([B)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbr/com/topaz/k/b;->b:Lbr/com/topaz/w0/b;

    invoke-interface {v1}, Lbr/com/topaz/w0/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbr/com/topaz/k/b;->b:Lbr/com/topaz/w0/b;

    invoke-interface {v1}, Lbr/com/topaz/w0/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lbr/com/topaz/k/b;->a:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    invoke-interface {v2, p1, v0}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->c([BLjava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public a(Ljava/lang/String;)[B
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbr/com/topaz/k/b;->b:Lbr/com/topaz/w0/b;

    invoke-interface {v1}, Lbr/com/topaz/w0/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbr/com/topaz/k/b;->b:Lbr/com/topaz/w0/b;

    invoke-interface {v1}, Lbr/com/topaz/w0/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/k/b;->a:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    invoke-interface {v1, p1, v0}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method
