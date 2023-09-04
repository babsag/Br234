.class public Lcom/combateafraude/faceauthenticator/input/MessageSettings;
.super Ljava/lang/Object;
.source "MessageSettings.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field b:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field c:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field d:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field e:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field f:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field g:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field h:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field i:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->j:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->k:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->l:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->m:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->n:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->o:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->p:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->q:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-direct {p0}, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->a()V

    .line 14
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->j:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->k:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->l:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->m:Ljava/lang/String;

    .line 18
    iput-object p5, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->n:Ljava/lang/String;

    .line 19
    iput-object p6, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->o:Ljava/lang/String;

    .line 20
    iput-object p7, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->p:Ljava/lang/String;

    .line 21
    iput-object p8, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->q:Ljava/lang/String;

    .line 22
    iput-object p9, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->r:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    sget v0, Lcom/combateafraude/faceauthenticator/R$string;->face_register_caf:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->a:Ljava/lang/Integer;

    .line 2
    sget v0, Lcom/combateafraude/faceauthenticator/R$string;->waiting_caf:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->b:Ljava/lang/Integer;

    .line 3
    sget v0, Lcom/combateafraude/faceauthenticator/R$string;->face_too_far_caf:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->c:Ljava/lang/Integer;

    .line 4
    sget v0, Lcom/combateafraude/faceauthenticator/R$string;->face_too_close_caf:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->d:Ljava/lang/Integer;

    .line 5
    sget v0, Lcom/combateafraude/faceauthenticator/R$string;->fit_your_face_caf:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->e:Ljava/lang/Integer;

    .line 6
    sget v0, Lcom/combateafraude/faceauthenticator/R$string;->sensor_unstable_caf:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->f:Ljava/lang/Integer;

    .line 7
    sget v0, Lcom/combateafraude/faceauthenticator/R$string;->eyes_closed_caf:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->g:Ljava/lang/Integer;

    .line 8
    sget v0, Lcom/combateafraude/faceauthenticator/R$string;->hold_it_caf:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->h:Ljava/lang/Integer;

    .line 9
    sget v0, Lcom/combateafraude/faceauthenticator/R$string;->doing_facematch_caf:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->i:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getDoingFacematchMessage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->i:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getEyesClosedMessage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFaceNotFittedMessage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFaceTooCloseMessage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFaceTooFarMessage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getHoldItMessage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->h:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSensorStabilityMessage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getStepName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getWaitMessage(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public setDoingFacematchMessage(Ljava/lang/Integer;)Lcom/combateafraude/faceauthenticator/input/MessageSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->i:Ljava/lang/Integer;

    return-object p0
.end method

.method public setEyesClosedMessage(Ljava/lang/Integer;)Lcom/combateafraude/faceauthenticator/input/MessageSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->g:Ljava/lang/Integer;

    return-object p0
.end method

.method public setFaceNotFittedMessage(Ljava/lang/Integer;)Lcom/combateafraude/faceauthenticator/input/MessageSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public setFaceTooCloseMessage(Ljava/lang/Integer;)Lcom/combateafraude/faceauthenticator/input/MessageSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public setFaceTooFarMessage(Ljava/lang/Integer;)Lcom/combateafraude/faceauthenticator/input/MessageSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public setHoldItMessage(Ljava/lang/Integer;)Lcom/combateafraude/faceauthenticator/input/MessageSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->h:Ljava/lang/Integer;

    return-object p0
.end method

.method public setSensorStabilityMessage(Ljava/lang/Integer;)Lcom/combateafraude/faceauthenticator/input/MessageSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->f:Ljava/lang/Integer;

    return-object p0
.end method

.method public setStepName(Ljava/lang/Integer;)Lcom/combateafraude/faceauthenticator/input/MessageSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public setWaitMessage(Ljava/lang/Integer;)Lcom/combateafraude/faceauthenticator/input/MessageSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->b:Ljava/lang/Integer;

    return-object p0
.end method
