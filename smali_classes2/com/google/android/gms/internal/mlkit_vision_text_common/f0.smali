.class final Lcom/google/android/gms/internal/mlkit_vision_text_common/f0;
.super Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbm;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@18.0.0"


# instance fields
.field final transient a:I

.field final transient b:I

.field final synthetic c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbm;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/f0;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbm;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/f0;->a:I

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/f0;->b:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/f0;->b:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzaa;->zza(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/f0;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbm;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/f0;->a:I

    add-int/2addr p1, v1

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/f0;->b:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbm;->zzf(II)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbm;

    move-result-object p1

    return-object p1
.end method

.method final zzb()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/f0;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbh;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/f0;->a:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/f0;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzc()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/f0;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbh;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/f0;->a:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zze()[Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/f0;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbh;->zze()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(II)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbm;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/f0;->b:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzaa;->zzc(III)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/f0;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbm;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/f0;->a:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbm;->zzf(II)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbm;

    move-result-object p1

    return-object p1
.end method
