.class public Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;
.super Ljava/lang/Object;
.source "DocumentDetectorStep.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lcom/combateafraude/documentdetector/input/Document;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "document"
    .end annotation
.end field

.field private b:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "illustration"
    .end annotation
.end field

.field private c:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stepLabel"
    .end annotation
.end field

.field private d:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stepAudio"
    .end annotation
.end field

.field private e:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "whiteMask"
    .end annotation
.end field

.field private f:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "redMask"
    .end annotation
.end field

.field private g:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "greenMask"
    .end annotation
.end field

.field private h:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "used"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/combateafraude/documentdetector/input/Document;)V
    .locals 1
    .param p1    # Lcom/combateafraude/documentdetector/input/Document;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->h:Z

    .line 12
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->a:Lcom/combateafraude/documentdetector/input/Document;

    .line 13
    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/Document;->getStepLabel()I

    move-result v0

    iput v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->c:I

    .line 14
    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/Document;->getAudio()I

    move-result v0

    iput v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->d:I

    .line 15
    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/Document;->getIllustration()I

    move-result v0

    iput v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->b:I

    .line 16
    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/Document;->getWhiteMaskResId()I

    move-result v0

    iput v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->e:I

    .line 17
    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/Document;->getRedMaskResId()I

    move-result v0

    iput v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->f:I

    .line 18
    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/Document;->getGreenMaskResId()I

    move-result p1

    iput p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->g:I

    return-void
.end method

.method public constructor <init>(Lcom/combateafraude/documentdetector/input/Document;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Lcom/combateafraude/documentdetector/input/Document;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->h:Z

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/Document;->getStepLabel()I

    move-result p2

    :goto_0
    iput p2, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->c:I

    if-eqz p4, :cond_1

    .line 4
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/Document;->getAudio()I

    move-result p2

    :goto_1
    iput p2, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->d:I

    .line 5
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->a:Lcom/combateafraude/documentdetector/input/Document;

    if-eqz p3, :cond_2

    .line 6
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/Document;->getIllustration()I

    move-result p2

    :goto_2
    iput p2, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->b:I

    if-eqz p5, :cond_3

    .line 7
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/Document;->getWhiteMaskResId()I

    move-result p2

    :goto_3
    iput p2, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->e:I

    if-eqz p6, :cond_4

    .line 8
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/Document;->getRedMaskResId()I

    move-result p2

    :goto_4
    iput p2, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->f:I

    if-eqz p7, :cond_5

    .line 9
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/Document;->getGreenMaskResId()I

    move-result p1

    :goto_5
    iput p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->g:I

    return-void
.end method


# virtual methods
.method public getDocument()Lcom/combateafraude/documentdetector/input/Document;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->a:Lcom/combateafraude/documentdetector/input/Document;

    return-object v0
.end method

.method public getGreenMask()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->g:I

    return v0
.end method

.method public getIllustration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->b:I

    return v0
.end method

.method public getRedMask()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->f:I

    return v0
.end method

.method public getStepAudio()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->d:I

    return v0
.end method

.method public getStepLabel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->c:I

    return v0
.end method

.method public getWhiteMask()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->e:I

    return v0
.end method

.method public isUsed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->h:Z

    return v0
.end method

.method public setIllustration(I)Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->b:I

    return-object p0
.end method

.method public setMask(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->e:I

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->g:I

    :cond_1
    if-eqz p3, :cond_2

    .line 3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->f:I

    :cond_2
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->h:Z

    return-object p0
.end method

.method public setStepAudio(I)Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->d:I

    return-object p0
.end method

.method public setStepLabel(I)Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->c:I

    return-object p0
.end method
