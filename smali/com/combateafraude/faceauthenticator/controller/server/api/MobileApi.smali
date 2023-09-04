.class public interface abstract Lcom/combateafraude/faceauthenticator/controller/server/api/MobileApi;
.super Ljava/lang/Object;
.source "MobileApi.java"

# interfaces
.implements Lcom/combateafraude/faceauthenticator/controller/server/api/Api;


# virtual methods
.method public abstract faceAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/FaceAuthParam;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "path1"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "path2"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p4    # Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/FaceAuthParam;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/FaceAuthParam;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/combateafraude/faceauthenticator/controller/server/model/response/FaceAuth;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "{path1}/{path2}?shouldSignResponse=true"
    .end annotation
.end method

.method public abstract verifyToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "path"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "product"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/combateafraude/faceauthenticator/controller/server/model/response/TokenVerification;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "tokens/{path}"
    .end annotation
.end method
