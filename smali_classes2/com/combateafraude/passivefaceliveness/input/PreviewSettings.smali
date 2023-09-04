.class public Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;
.super Ljava/lang/Object;
.source "PreviewSettings.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field confirmLabelMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "confirmLabelMessage"
    .end annotation
.end field

.field confirmLabelResourceId:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field retryLabelMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "retryLabelMessage"
    .end annotation
.end field

.field retryLabelResourceId:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field show:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "show"
    .end annotation
.end field

.field subtitleMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subtitleMessage"
    .end annotation
.end field

.field subtitleResourceId:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field titleMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "titleMessage"
    .end annotation
.end field

.field titleResourceId:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->show:Z

    .line 3
    invoke-direct {p0}, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->initializeResourceIdVariables()V

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1, p1, p1, p1}, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->initializeStringVariables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-boolean p1, p0, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->show:Z

    .line 7
    invoke-direct {p0}, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->initializeResourceIdVariables()V

    .line 8
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->initializeStringVariables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initializeResourceIdVariables()V
    .locals 1

    .line 1
    sget v0, Lcom/combateafraude/passivefaceliveness/R$string;->preview_title:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->titleResourceId:Ljava/lang/Integer;

    .line 2
    sget v0, Lcom/combateafraude/passivefaceliveness/R$string;->pfl_preview_subtitle:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->subtitleResourceId:Ljava/lang/Integer;

    .line 3
    sget v0, Lcom/combateafraude/passivefaceliveness/R$string;->preview_accept:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->confirmLabelResourceId:Ljava/lang/Integer;

    .line 4
    sget v0, Lcom/combateafraude/passivefaceliveness/R$string;->preview_try_again:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->retryLabelResourceId:Ljava/lang/Integer;

    return-void
.end method

.method private initializeStringVariables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->titleMessage:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->subtitleMessage:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->confirmLabelMessage:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->retryLabelMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConfirmLabel(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->confirmLabelMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->confirmLabelResourceId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getRetryLabel(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->retryLabelMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->retryLabelResourceId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSubtitle(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->subtitleMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->subtitleResourceId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTitle(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->titleMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->titleResourceId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public setConfirmLabel(Ljava/lang/Integer;)Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->confirmLabelResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method public setRetryLabel(Ljava/lang/Integer;)Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->retryLabelResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/Integer;)Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->subtitleResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTitle(Ljava/lang/Integer;)Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->titleResourceId:Ljava/lang/Integer;

    return-object p0
.end method

.method public shouldShowPreview()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->show:Z

    return v0
.end method
