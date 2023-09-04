.class public interface abstract Lcom/combateafraude/documentdetector/controller/server/api/GenericApi;
.super Ljava/lang/Object;
.source "GenericApi.java"

# interfaces
.implements Lcom/combateafraude/documentdetector/controller/server/api/Api;


# static fields
.field public static final BASE_URL:Ljava/lang/String; = "https://www.google.com/"


# virtual methods
.method public abstract uploadImage(Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .param p2    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lokhttp3/RequestBody;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
    .end annotation
.end method
