.class public Lcom/combateafraude/documentdetector/input/UploadSettings;
.super Ljava/lang/Object;
.source "UploadSettings.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:Ljava/lang/Boolean;

.field b:Ljava/lang/Integer;

.field c:Ljava/lang/Integer;

.field d:Ljava/lang/Boolean;

.field e:[Lcom/combateafraude/documentdetector/input/FileFormat;

.field f:Ljava/lang/Integer;

.field g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/combateafraude/documentdetector/input/UploadSettings;->a:Ljava/lang/Boolean;

    .line 3
    sget v1, Lcom/combateafraude/documentdetector/R$layout;->activity_upload_image:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/combateafraude/documentdetector/input/UploadSettings;->b:Ljava/lang/Integer;

    .line 4
    sget v1, Lcom/combateafraude/documentdetector/R$layout;->popup_upload_document_caf:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/combateafraude/documentdetector/input/UploadSettings;->c:Ljava/lang/Integer;

    .line 5
    iput-object v0, p0, Lcom/combateafraude/documentdetector/input/UploadSettings;->d:Ljava/lang/Boolean;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/combateafraude/documentdetector/input/FileFormat;

    .line 6
    sget-object v1, Lcom/combateafraude/documentdetector/input/FileFormat;->PDF:Lcom/combateafraude/documentdetector/input/FileFormat;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/input/FileFormat;->JPG:Lcom/combateafraude/documentdetector/input/FileFormat;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/input/FileFormat;->JPEG:Lcom/combateafraude/documentdetector/input/FileFormat;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/input/FileFormat;->PNG:Lcom/combateafraude/documentdetector/input/FileFormat;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/documentdetector/input/FileFormat;->HEIF:Lcom/combateafraude/documentdetector/input/FileFormat;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/combateafraude/documentdetector/input/UploadSettings;->e:[Lcom/combateafraude/documentdetector/input/FileFormat;

    const/16 v0, 0x4e20

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/documentdetector/input/UploadSettings;->f:Ljava/lang/Integer;

    const-string v0, "android.intent.action.GET_CONTENT"

    .line 8
    iput-object v0, p0, Lcom/combateafraude/documentdetector/input/UploadSettings;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/UploadSettings;->a:Ljava/lang/Boolean;

    .line 11
    sget p1, Lcom/combateafraude/documentdetector/R$layout;->activity_upload_image:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/UploadSettings;->b:Ljava/lang/Integer;

    .line 12
    sget p1, Lcom/combateafraude/documentdetector/R$layout;->popup_upload_document_caf:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/UploadSettings;->c:Ljava/lang/Integer;

    .line 13
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/UploadSettings;->d:Ljava/lang/Boolean;

    const/4 p1, 0x5

    new-array p1, p1, [Lcom/combateafraude/documentdetector/input/FileFormat;

    .line 14
    sget-object v0, Lcom/combateafraude/documentdetector/input/FileFormat;->PDF:Lcom/combateafraude/documentdetector/input/FileFormat;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    sget-object v0, Lcom/combateafraude/documentdetector/input/FileFormat;->JPG:Lcom/combateafraude/documentdetector/input/FileFormat;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    sget-object v0, Lcom/combateafraude/documentdetector/input/FileFormat;->JPEG:Lcom/combateafraude/documentdetector/input/FileFormat;

    const/4 v1, 0x2

    aput-object v0, p1, v1

    sget-object v0, Lcom/combateafraude/documentdetector/input/FileFormat;->PNG:Lcom/combateafraude/documentdetector/input/FileFormat;

    const/4 v1, 0x3

    aput-object v0, p1, v1

    sget-object v0, Lcom/combateafraude/documentdetector/input/FileFormat;->HEIF:Lcom/combateafraude/documentdetector/input/FileFormat;

    const/4 v1, 0x4

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/UploadSettings;->e:[Lcom/combateafraude/documentdetector/input/FileFormat;

    const/16 p1, 0x4e20

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/UploadSettings;->f:Ljava/lang/Integer;

    const-string p1, "android.intent.action.GET_CONTENT"

    .line 16
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/UploadSettings;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActivityLayout()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/UploadSettings;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFileFormats()[Lcom/combateafraude/documentdetector/input/FileFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/UploadSettings;->e:[Lcom/combateafraude/documentdetector/input/FileFormat;

    return-object v0
.end method

.method public getIntent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/UploadSettings;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxFileSize()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/UploadSettings;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPopUpLayout()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/UploadSettings;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public isCompress()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/UploadSettings;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isEnable()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/UploadSettings;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setActivityLayout(Ljava/lang/Integer;)Lcom/combateafraude/documentdetector/input/UploadSettings;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/UploadSettings;->b:Ljava/lang/Integer;

    :cond_0
    return-object p0
.end method

.method public setCompress(Ljava/lang/Boolean;)Lcom/combateafraude/documentdetector/input/UploadSettings;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/UploadSettings;->d:Ljava/lang/Boolean;

    :cond_0
    return-object p0
.end method

.method public setEnable(Ljava/lang/Boolean;)Lcom/combateafraude/documentdetector/input/UploadSettings;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/UploadSettings;->a:Ljava/lang/Boolean;

    :cond_0
    return-object p0
.end method

.method public setFileFormats([Lcom/combateafraude/documentdetector/input/FileFormat;)Lcom/combateafraude/documentdetector/input/UploadSettings;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/UploadSettings;->e:[Lcom/combateafraude/documentdetector/input/FileFormat;

    :cond_0
    return-object p0
.end method

.method public setIntent(Ljava/lang/String;)Lcom/combateafraude/documentdetector/input/UploadSettings;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/UploadSettings;->g:Ljava/lang/String;

    return-object p0
.end method

.method public setMaxFileSize(Ljava/lang/Integer;)Lcom/combateafraude/documentdetector/input/UploadSettings;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/UploadSettings;->f:Ljava/lang/Integer;

    :cond_0
    return-object p0
.end method

.method public setPopUpLayout(Ljava/lang/Integer;)Lcom/combateafraude/documentdetector/input/UploadSettings;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/UploadSettings;->c:Ljava/lang/Integer;

    :cond_0
    return-object p0
.end method
