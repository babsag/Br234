.class public Lcom/combateafraude/faceauthenticator/controller/server/model/response/FaceAuth;
.super Ljava/lang/Object;
.source "FaceAuth.java"


# instance fields
.field private a:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isMatch"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signedResponse"
    .end annotation
.end field

.field private d:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "openEyesProbability"
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
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/response/FaceAuth;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenEyesProbability()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/response/FaceAuth;->d:D

    return-wide v0
.end method

.method public getSignedResponse()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/response/FaceAuth;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isMatch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/response/FaceAuth;->a:Z

    return v0
.end method
