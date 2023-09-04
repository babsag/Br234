.class public Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ImageUpload;
.super Ljava/lang/Object;
.source "ImageUpload.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private body:Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ImageUploadParam;
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
.method public getBody()Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ImageUploadParam;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ImageUpload;->body:Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ImageUploadParam;

    return-object v0
.end method
