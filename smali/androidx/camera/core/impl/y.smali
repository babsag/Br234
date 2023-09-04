.class final Landroidx/camera/core/impl/y;
.super Landroidx/camera/core/impl/CamcorderProfileProxy;
.source "AutoValue_CamcorderProfileProxy.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I


# direct methods
.method constructor <init>(IIIIIIIIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/camera/core/impl/CamcorderProfileProxy;-><init>()V

    .line 2
    iput p1, p0, Landroidx/camera/core/impl/y;->a:I

    .line 3
    iput p2, p0, Landroidx/camera/core/impl/y;->b:I

    .line 4
    iput p3, p0, Landroidx/camera/core/impl/y;->c:I

    .line 5
    iput p4, p0, Landroidx/camera/core/impl/y;->d:I

    .line 6
    iput p5, p0, Landroidx/camera/core/impl/y;->e:I

    .line 7
    iput p6, p0, Landroidx/camera/core/impl/y;->f:I

    .line 8
    iput p7, p0, Landroidx/camera/core/impl/y;->g:I

    .line 9
    iput p8, p0, Landroidx/camera/core/impl/y;->h:I

    .line 10
    iput p9, p0, Landroidx/camera/core/impl/y;->i:I

    .line 11
    iput p10, p0, Landroidx/camera/core/impl/y;->j:I

    .line 12
    iput p11, p0, Landroidx/camera/core/impl/y;->k:I

    .line 13
    iput p12, p0, Landroidx/camera/core/impl/y;->l:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Landroidx/camera/core/impl/CamcorderProfileProxy;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Landroidx/camera/core/impl/CamcorderProfileProxy;

    .line 3
    iget v1, p0, Landroidx/camera/core/impl/y;->a:I

    invoke-virtual {p1}, Landroidx/camera/core/impl/CamcorderProfileProxy;->getDuration()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/core/impl/y;->b:I

    .line 4
    invoke-virtual {p1}, Landroidx/camera/core/impl/CamcorderProfileProxy;->getQuality()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/core/impl/y;->c:I

    .line 5
    invoke-virtual {p1}, Landroidx/camera/core/impl/CamcorderProfileProxy;->getFileFormat()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/core/impl/y;->d:I

    .line 6
    invoke-virtual {p1}, Landroidx/camera/core/impl/CamcorderProfileProxy;->getVideoCodec()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/core/impl/y;->e:I

    .line 7
    invoke-virtual {p1}, Landroidx/camera/core/impl/CamcorderProfileProxy;->getVideoBitRate()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/core/impl/y;->f:I

    .line 8
    invoke-virtual {p1}, Landroidx/camera/core/impl/CamcorderProfileProxy;->getVideoFrameRate()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/core/impl/y;->g:I

    .line 9
    invoke-virtual {p1}, Landroidx/camera/core/impl/CamcorderProfileProxy;->getVideoFrameWidth()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/core/impl/y;->h:I

    .line 10
    invoke-virtual {p1}, Landroidx/camera/core/impl/CamcorderProfileProxy;->getVideoFrameHeight()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/core/impl/y;->i:I

    .line 11
    invoke-virtual {p1}, Landroidx/camera/core/impl/CamcorderProfileProxy;->getAudioCodec()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/core/impl/y;->j:I

    .line 12
    invoke-virtual {p1}, Landroidx/camera/core/impl/CamcorderProfileProxy;->getAudioBitRate()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/core/impl/y;->k:I

    .line 13
    invoke-virtual {p1}, Landroidx/camera/core/impl/CamcorderProfileProxy;->getAudioSampleRate()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/camera/core/impl/y;->l:I

    .line 14
    invoke-virtual {p1}, Landroidx/camera/core/impl/CamcorderProfileProxy;->getAudioChannels()I

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getAudioBitRate()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/y;->j:I

    return v0
.end method

.method public getAudioChannels()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/y;->l:I

    return v0
.end method

.method public getAudioCodec()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/y;->i:I

    return v0
.end method

.method public getAudioSampleRate()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/y;->k:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/y;->a:I

    return v0
.end method

.method public getFileFormat()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/y;->c:I

    return v0
.end method

.method public getQuality()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/y;->b:I

    return v0
.end method

.method public getVideoBitRate()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/y;->e:I

    return v0
.end method

.method public getVideoCodec()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/y;->d:I

    return v0
.end method

.method public getVideoFrameHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/y;->h:I

    return v0
.end method

.method public getVideoFrameRate()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/y;->f:I

    return v0
.end method

.method public getVideoFrameWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/y;->g:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/y;->a:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget v2, p0, Landroidx/camera/core/impl/y;->b:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget v2, p0, Landroidx/camera/core/impl/y;->c:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 4
    iget v2, p0, Landroidx/camera/core/impl/y;->d:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 5
    iget v2, p0, Landroidx/camera/core/impl/y;->e:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 6
    iget v2, p0, Landroidx/camera/core/impl/y;->f:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 7
    iget v2, p0, Landroidx/camera/core/impl/y;->g:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 8
    iget v2, p0, Landroidx/camera/core/impl/y;->h:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 9
    iget v2, p0, Landroidx/camera/core/impl/y;->i:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 10
    iget v2, p0, Landroidx/camera/core/impl/y;->j:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 11
    iget v2, p0, Landroidx/camera/core/impl/y;->k:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 12
    iget v1, p0, Landroidx/camera/core/impl/y;->l:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CamcorderProfileProxy{duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/impl/y;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", quality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/impl/y;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fileFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/impl/y;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoCodec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/impl/y;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoBitRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/impl/y;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/impl/y;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoFrameWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/impl/y;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoFrameHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/impl/y;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audioCodec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/impl/y;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audioBitRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/impl/y;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audioSampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/impl/y;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audioChannels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/core/impl/y;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
