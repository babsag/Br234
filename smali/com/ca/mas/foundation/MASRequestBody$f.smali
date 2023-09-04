.class final Lcom/ca/mas/foundation/MASRequestBody$f;
.super Lcom/ca/mas/foundation/MASRequestBody;
.source "MASRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/MASRequestBody;->a(Lcom/ca/mas/foundation/MASClaims;Ljava/security/PrivateKey;Lcom/ca/mas/foundation/MASRequestBody;)Lcom/ca/mas/foundation/MASRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/foundation/MASClaims;

.field final synthetic b:Lcom/ca/mas/foundation/MASRequestBody;

.field final synthetic c:Ljava/security/PrivateKey;


# direct methods
.method constructor <init>(Lcom/ca/mas/foundation/MASClaims;Lcom/ca/mas/foundation/MASRequestBody;Ljava/security/PrivateKey;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASRequestBody$f;->a:Lcom/ca/mas/foundation/MASClaims;

    iput-object p2, p0, Lcom/ca/mas/foundation/MASRequestBody$f;->b:Lcom/ca/mas/foundation/MASRequestBody;

    iput-object p3, p0, Lcom/ca/mas/foundation/MASRequestBody$f;->c:Ljava/security/PrivateKey;

    invoke-direct {p0}, Lcom/ca/mas/foundation/MASRequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getContentType()Lcom/ca/mas/core/http/ContentType;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/core/http/ContentType;->TEXT_PLAIN:Lcom/ca/mas/core/http/ContentType;

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/MASClaimsBuilder;

    iget-object v1, p0, Lcom/ca/mas/foundation/MASRequestBody$f;->a:Lcom/ca/mas/foundation/MASClaims;

    invoke-direct {v0, v1}, Lcom/ca/mas/foundation/MASClaimsBuilder;-><init>(Lcom/ca/mas/foundation/MASClaims;)V

    .line 2
    iget-object v1, p0, Lcom/ca/mas/foundation/MASRequestBody$f;->b:Lcom/ca/mas/foundation/MASRequestBody;

    invoke-virtual {v1}, Lcom/ca/mas/foundation/MASRequestBody;->getContentAsJsonValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v0, v2, v1}, Lcom/ca/mas/foundation/MASClaimsBuilder;->claim(Ljava/lang/String;Ljava/lang/Object;)Lcom/ca/mas/foundation/MASClaimsBuilder;

    .line 3
    iget-object v1, p0, Lcom/ca/mas/foundation/MASRequestBody$f;->b:Lcom/ca/mas/foundation/MASRequestBody;

    invoke-virtual {v1}, Lcom/ca/mas/foundation/MASRequestBody;->getContentType()Lcom/ca/mas/core/http/ContentType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/ca/mas/foundation/MASRequestBody$f;->b:Lcom/ca/mas/foundation/MASRequestBody;

    invoke-virtual {v1}, Lcom/ca/mas/foundation/MASRequestBody;->getContentType()Lcom/ca/mas/core/http/ContentType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/mas/core/http/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content-type"

    invoke-virtual {v0, v2, v1}, Lcom/ca/mas/foundation/MASClaimsBuilder;->claim(Ljava/lang/String;Ljava/lang/Object;)Lcom/ca/mas/foundation/MASClaimsBuilder;

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASClaimsBuilder;->build()Lcom/ca/mas/foundation/MASClaims;

    move-result-object v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/ca/mas/foundation/MASRequestBody$f;->c:Ljava/security/PrivateKey;

    if-nez v1, :cond_1

    .line 7
    invoke-static {v0}, Lcom/ca/mas/foundation/MAS;->sign(Lcom/ca/mas/foundation/MASClaims;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v0, v1}, Lcom/ca/mas/foundation/MAS;->sign(Lcom/ca/mas/foundation/MASClaims;Ljava/security/PrivateKey;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/ca/mas/foundation/MASException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASRequestBody$f;->getContentType()Lcom/ca/mas/core/http/ContentType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/mas/core/http/ContentType;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    :catch_0
    move-exception p1

    .line 10
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
