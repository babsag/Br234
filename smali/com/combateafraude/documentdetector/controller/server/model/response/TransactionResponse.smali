.class public Lcom/combateafraude/documentdetector/controller/server/model/response/TransactionResponse;
.super Ljava/lang/Object;
.source "TransactionResponse.java"


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requestId"
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageUrl"
    .end annotation
.end field

.field private c:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "qualifierScore"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getQuality()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/combateafraude/documentdetector/controller/server/model/response/TransactionResponse;->c:D

    return-wide v0
.end method

.method public getimageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/server/model/response/TransactionResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getrequestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/server/model/response/TransactionResponse;->a:Ljava/lang/String;

    return-object v0
.end method
