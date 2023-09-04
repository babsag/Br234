.class public Lcom/combateafraude/documentdetector/input/PreviewSettings;
.super Ljava/lang/Object;
.source "PreviewSettings.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "show"
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

.field f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "titleMessage"
    .end annotation
.end field

.field g:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subtitleMessage"
    .end annotation
.end field

.field h:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "confirmLabelMessage"
    .end annotation
.end field

.field i:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "retryLabelMessage"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->a:Z

    .line 3
    sget p1, Lcom/combateafraude/documentdetector/R$string;->preview_title:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->b:Ljava/lang/Integer;

    .line 4
    sget p1, Lcom/combateafraude/documentdetector/R$string;->preview_subtitle:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->c:Ljava/lang/Integer;

    .line 5
    sget p1, Lcom/combateafraude/documentdetector/R$string;->preview_accept:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->d:Ljava/lang/Integer;

    .line 6
    sget p1, Lcom/combateafraude/documentdetector/R$string;->preview_try_again:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->e:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->f:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->g:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->h:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean p1, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->a:Z

    .line 13
    sget p1, Lcom/combateafraude/documentdetector/R$string;->preview_title:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->b:Ljava/lang/Integer;

    .line 14
    sget p1, Lcom/combateafraude/documentdetector/R$string;->preview_subtitle:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->c:Ljava/lang/Integer;

    .line 15
    sget p1, Lcom/combateafraude/documentdetector/R$string;->preview_accept:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->d:Ljava/lang/Integer;

    .line 16
    sget p1, Lcom/combateafraude/documentdetector/R$string;->preview_try_again:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->e:Ljava/lang/Integer;

    .line 17
    iput-object p2, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->f:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->g:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->h:Ljava/lang/String;

    .line 20
    iput-object p5, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConfirmLabel(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->d:Ljava/lang/Integer;

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
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->e:Ljava/lang/Integer;

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
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->c:Ljava/lang/Integer;

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
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isShow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->a:Z

    return v0
.end method

.method public setConfirmLabel(Ljava/lang/Integer;)Lcom/combateafraude/documentdetector/input/PreviewSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->d:Ljava/lang/Integer;

    :cond_0
    return-object p0
.end method

.method public setRetryLabel(Ljava/lang/Integer;)Lcom/combateafraude/documentdetector/input/PreviewSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->e:Ljava/lang/Integer;

    :cond_0
    return-object p0
.end method

.method public setSubtitle(Ljava/lang/Integer;)Lcom/combateafraude/documentdetector/input/PreviewSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->c:Ljava/lang/Integer;

    :cond_0
    return-object p0
.end method

.method public setTitle(Ljava/lang/Integer;)Lcom/combateafraude/documentdetector/input/PreviewSettings;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/PreviewSettings;->b:Ljava/lang/Integer;

    :cond_0
    return-object p0
.end method
