.class final Lcom/ca/mas/foundation/MASRequestBody$a;
.super Lcom/ca/mas/foundation/MASRequestBody;
.source "MASRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/MASRequestBody;->byteArrayBody([B)Lcom/ca/mas/foundation/MASRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final a:[B

.field final synthetic b:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASRequestBody$a;->b:[B

    invoke-direct {p0}, Lcom/ca/mas/foundation/MASRequestBody;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ca/mas/foundation/MASRequestBody$a;->a:[B

    return-void
.end method


# virtual methods
.method public getContentAsJsonValue()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASRequestBody$a;->b:[B

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASRequestBody$a;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getContentType()Lcom/ca/mas/core/http/ContentType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASRequestBody$a;->a:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
