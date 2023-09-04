.class public abstract Lcom/combateafraude/faceauthenticator/controller/sensors/SensorCommonSettings;
.super Ljava/lang/Object;
.source "SensorCommonSettings.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorCommonSettings;->a:I

    return-void
.end method


# virtual methods
.method public getMessageResourceId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorCommonSettings;->a:I

    return v0
.end method

.method public setMessageResourceId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorCommonSettings;->a:I

    return-void
.end method
