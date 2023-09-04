.class public Lcom/google/mlkit/vision/text/Text$Symbol;
.super Lcom/google/mlkit/vision/text/Text$a;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/vision/text/Text;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Symbol"
.end annotation


# instance fields
.field private final e:F

.field private final f:F


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpi;Landroid/graphics/Matrix;)V
    .locals 6
    .param p1    # Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpi;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpi;->zzd()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpi;->zzc()Landroid/graphics/Rect;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpi;->zze()Ljava/util/List;

    move-result-object v3

    const-string v4, ""

    move-object v0, p0

    move-object v5, p2

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/google/mlkit/vision/text/Text$a;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/String;Landroid/graphics/Matrix;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpi;->zzb()F

    move-result p2

    iput p2, p0, Lcom/google/mlkit/vision/text/Text$Symbol;->e:F

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpi;->zza()F

    move-result p1

    iput p1, p0, Lcom/google/mlkit/vision/text/Text$Symbol;->f:F

    return-void
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    iget v0, p0, Lcom/google/mlkit/vision/text/Text$Symbol;->f:F

    return v0
.end method

.method public getConfidence()F
    .locals 1

    iget v0, p0, Lcom/google/mlkit/vision/text/Text$Symbol;->e:F

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/mlkit/vision/text/Text$a;->zza()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
