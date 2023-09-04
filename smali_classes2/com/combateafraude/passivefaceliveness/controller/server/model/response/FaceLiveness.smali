.class public Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FaceLiveness;
.super Ljava/lang/Object;
.source "FaceLiveness.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private attemptId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "attemptId"
    .end annotation
.end field

.field private code:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field

.field private frameInfo:Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FrameInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "frameInfo"
    .end annotation
.end field

.field private imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageUrl"
    .end annotation
.end field

.field private isAlive:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isAlive"
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field private openEyesProbability:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "openEyesProbability"
    .end annotation
.end field

.field private requestId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requestId"
    .end annotation
.end field

.field private signedResponse:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signedResponse"
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
.method public getAttemptId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FaceLiveness;->attemptId:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FaceLiveness;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameInfo()Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FrameInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FaceLiveness;->frameInfo:Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FrameInfo;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FaceLiveness;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FaceLiveness;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenEyesProbability()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FaceLiveness;->openEyesProbability:D

    return-wide v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FaceLiveness;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getSignedResponse()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FaceLiveness;->signedResponse:Ljava/lang/String;

    return-object v0
.end method

.method public isAlive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FaceLiveness;->isAlive:Z

    return v0
.end method
