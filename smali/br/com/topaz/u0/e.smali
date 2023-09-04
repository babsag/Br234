.class public Lbr/com/topaz/u0/e;
.super Lbr/com/topaz/u0/c;
.source "SourceFile"


# instance fields
.field private c:Lbr/com/topaz/w0/b;


# direct methods
.method public constructor <init>(Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/u0/a;Lbr/com/topaz/w0/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lbr/com/topaz/u0/c;-><init>(Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/u0/a;)V

    iput-object p3, p0, Lbr/com/topaz/u0/e;->c:Lbr/com/topaz/w0/b;

    return-void
.end method


# virtual methods
.method public a([B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbr/com/topaz/u0/e;->c:Lbr/com/topaz/w0/b;

    invoke-interface {v1}, Lbr/com/topaz/w0/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbr/com/topaz/u0/e;->c:Lbr/com/topaz/w0/b;

    invoke-interface {v1}, Lbr/com/topaz/w0/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lbr/com/topaz/u0/c;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
