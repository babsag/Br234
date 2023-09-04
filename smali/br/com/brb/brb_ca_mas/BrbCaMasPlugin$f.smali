.class Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$f;
.super Lcom/ca/mas/foundation/MASRequestBody;
.source "BrbCaMasPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin;->f(Lio/flutter/plugin/common/MethodCall;)Lcom/ca/mas/foundation/MASRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:[B

.field final synthetic d:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin;


# direct methods
.method constructor <init>(Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$mimeType",
            "val$charset",
            "val$bytes"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$f;->d:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin;

    iput-object p2, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$f;->a:Ljava/lang/String;

    iput-object p3, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$f;->b:Ljava/lang/String;

    iput-object p4, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$f;->c:[B

    invoke-direct {p0}, Lcom/ca/mas/foundation/MASRequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$f;->c:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getContentType()Lcom/ca/mas/core/http/ContentType;
    .locals 3

    .line 1
    new-instance v0, Lcom/ca/mas/core/http/ContentType;

    iget-object v1, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$f;->a:Ljava/lang/String;

    iget-object v2, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$f;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/ca/mas/core/http/ContentType;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$f;->c:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
