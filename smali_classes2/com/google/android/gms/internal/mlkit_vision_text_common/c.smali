.class final Lcom/google/android/gms/internal/mlkit_vision_text_common/c;
.super Lcom/google/android/gms/internal/mlkit_vision_text_common/l0;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@18.0.0"


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/mlkit_vision_text_common/e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/c;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/e;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/l0;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/c;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/e;

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/c;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/e;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/e;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/d;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/c;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/e;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/d;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/e;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/l0;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/c;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/e;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/e;->d:Lcom/google/android/gms/internal/mlkit_vision_text_common/m;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/m;->zzm(Lcom/google/android/gms/internal/mlkit_vision_text_common/m;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
