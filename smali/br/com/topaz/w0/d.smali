.class public Lbr/com/topaz/w0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/w0/a;


# instance fields
.field private a:Lbr/com/topaz/l/f0;

.field private b:Lbr/com/topaz/w0/b;

.field private c:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

.field private d:Lbr/com/topaz/heartbeat/utils/OFDException;


# direct methods
.method public constructor <init>(Lbr/com/topaz/l/f0;Lbr/com/topaz/w0/b;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/heartbeat/utils/OFDException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/w0/d;->a:Lbr/com/topaz/l/f0;

    iput-object p2, p0, Lbr/com/topaz/w0/d;->b:Lbr/com/topaz/w0/b;

    iput-object p3, p0, Lbr/com/topaz/w0/d;->c:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    iput-object p4, p0, Lbr/com/topaz/w0/d;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/w0/d;->a:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->x()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbr/com/topaz/w0/d;->b:Lbr/com/topaz/w0/b;

    invoke-interface {v2}, Lbr/com/topaz/w0/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbr/com/topaz/w0/d;->b:Lbr/com/topaz/w0/b;

    invoke-interface {v2}, Lbr/com/topaz/w0/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbr/com/topaz/w0/d;->c:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    invoke-interface {v2, v1, p1, v0}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object v0, p0, Lbr/com/topaz/w0/d;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v1, "013"

    invoke-virtual {v0, p1, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    const-string p1, ""

    :goto_1
    return-object p1
.end method
