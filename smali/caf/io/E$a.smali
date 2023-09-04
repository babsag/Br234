.class public interface abstract Lcaf/io/E$a;
.super Ljava/lang/Object;
.source "MobileApi.java"

# interfaces
.implements Lcaf/io/O;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcaf/io/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/AttestationParam;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/AttestationParam;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/AttestationParam;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/combateafraude/passivefaceliveness/controller/server/model/response/AttestationVerification;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "attestations"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/UploadImageParam;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/UploadImageParam;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/UploadImageParam;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ImageUploadParam;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "uploads"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/FaceLivenessParam;)Lretrofit2/Call;
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
    .param p3    # Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/FaceLivenessParam;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/FaceLivenessParam;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FaceLiveness;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "faces/liveness?shouldSignResponse=true"
    .end annotation
.end method
