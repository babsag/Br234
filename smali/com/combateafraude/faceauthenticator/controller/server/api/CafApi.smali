.class public interface abstract Lcom/combateafraude/faceauthenticator/controller/server/api/CafApi;
.super Ljava/lang/Object;
.source "CafApi.java"

# interfaces
.implements Lcom/combateafraude/faceauthenticator/controller/server/api/Api;


# virtual methods
.method public abstract getUploadLinks()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/combateafraude/faceauthenticator/controller/server/model/response/ImageUpload;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "image-upload"
    .end annotation
.end method
