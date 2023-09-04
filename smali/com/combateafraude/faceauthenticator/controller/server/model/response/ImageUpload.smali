.class public Lcom/combateafraude/faceauthenticator/controller/server/model/response/ImageUpload;
.super Ljava/lang/Object;
.source "ImageUpload.java"


# instance fields
.field private a:Lcom/combateafraude/faceauthenticator/controller/server/model/response/ImageUploadBody;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "body"
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
.method public getBody()Lcom/combateafraude/faceauthenticator/controller/server/model/response/ImageUploadBody;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/server/model/response/ImageUpload;->a:Lcom/combateafraude/faceauthenticator/controller/server/model/response/ImageUploadBody;

    return-object v0
.end method
