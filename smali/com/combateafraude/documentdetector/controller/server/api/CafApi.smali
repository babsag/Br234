.class public interface abstract Lcom/combateafraude/documentdetector/controller/server/api/CafApi;
.super Ljava/lang/Object;
.source "CafApi.java"

# interfaces
.implements Lcom/combateafraude/documentdetector/controller/server/api/Api;


# virtual methods
.method public abstract getUploadLinks()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/combateafraude/documentdetector/controller/server/model/response/ImageUpload;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "image-upload"
    .end annotation
.end method

.method public abstract transactions(Ljava/lang/String;Lcom/combateafraude/documentdetector/controller/server/model/parameter/TransactionParam;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/combateafraude/documentdetector/controller/server/model/parameter/TransactionParam;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/combateafraude/documentdetector/controller/server/model/parameter/TransactionParam;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/combateafraude/documentdetector/controller/server/model/response/TransactionResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v2/transactions"
    .end annotation
.end method
