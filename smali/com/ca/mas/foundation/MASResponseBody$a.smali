.class final Lcom/ca/mas/foundation/MASResponseBody$a;
.super Lcom/ca/mas/foundation/MASResponseBody;
.source "MASResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/foundation/MASResponseBody;->byteArrayBody()Lcom/ca/mas/foundation/MASResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ca/mas/foundation/MASResponseBody<",
        "[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/foundation/MASResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASResponseBody;->buffer:[B

    return-object v0
.end method

.method public bridge synthetic getContent()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ca/mas/foundation/MASResponseBody$a;->a()[B

    move-result-object v0

    return-object v0
.end method
