.class public interface abstract Lcom/combateafraude/documentdetector/controller/server/api/MobileApi;
.super Ljava/lang/Object;
.source "MobileApi.java"

# interfaces
.implements Lcom/combateafraude/documentdetector/controller/server/api/Api;


# virtual methods
.method public abstract getOcr(Ljava/lang/String;Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentOcrParam;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentOcrParam;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentOcrParam;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentOcr;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "document/ocr"
    .end annotation
.end method

.method public abstract getUploadLinks(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "getExpireIn"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/combateafraude/documentdetector/controller/server/model/response/ImageUploadBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "uploads"
    .end annotation
.end method

.method public abstract verifyQuality(Ljava/lang/String;Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentQualityParam;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentQualityParam;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/combateafraude/documentdetector/controller/server/model/parameter/DocumentQualityParam;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/combateafraude/documentdetector/controller/server/model/response/DocumentQuality;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "document/quality"
    .end annotation
.end method

.method public abstract verifyToken(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "product"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/combateafraude/documentdetector/controller/server/model/response/TokenVerification;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "tokens/verify"
    .end annotation
.end method
