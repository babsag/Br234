.class abstract Lcom/google/android/gms/internal/mlkit_vision_text_common/v;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@18.0.0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:I

.field b:I

.field c:I

.field final synthetic d:Lcom/google/android/gms/internal/mlkit_vision_text_common/z;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/z;Lcom/google/android/gms/internal/mlkit_vision_text_common/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/v;->d:Lcom/google/android/gms/internal/mlkit_vision_text_common/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/z;->d(Lcom/google/android/gms/internal/mlkit_vision_text_common/z;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/v;->a:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/z;->h()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/v;->b:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/v;->c:I

    return-void
.end method

.method private final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/v;->d:Lcom/google/android/gms/internal/mlkit_vision_text_common/z;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/z;->d(Lcom/google/android/gms/internal/mlkit_vision_text_common/z;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/v;->a:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method abstract a(I)Ljava/lang/Object;
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/v;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/v;->b()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/v;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/v;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/v;->c:I

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/v;->a(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/v;->d:Lcom/google/android/gms/internal/mlkit_vision_text_common/z;

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/v;->b:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/z;->i(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/v;->b:I

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 5
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/v;->b()V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/v;->c:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzaa;->zzd(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/v;->a:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/v;->a:I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/v;->d:Lcom/google/android/gms/internal/mlkit_vision_text_common/z;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/v;->c:I

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/z;->j(Lcom/google/android/gms/internal/mlkit_vision_text_common/z;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/z;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/v;->b:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/v;->b:I

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/v;->c:I

    return-void
.end method
