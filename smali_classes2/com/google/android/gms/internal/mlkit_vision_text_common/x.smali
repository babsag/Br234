.class final Lcom/google/android/gms/internal/mlkit_vision_text_common/x;
.super Lcom/google/android/gms/internal/mlkit_vision_text_common/n;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@18.0.0"


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:I

.field final synthetic c:Lcom/google/android/gms/internal/mlkit_vision_text_common/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/z;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/x;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/z;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/n;-><init>()V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/z;->j(Lcom/google/android/gms/internal/mlkit_vision_text_common/z;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/x;->a:Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/x;->b:I

    return-void
.end method

.method private final a()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/x;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/x;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/z;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/z;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/x;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/x;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/z;

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/x;->b:I

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/z;->j(Lcom/google/android/gms/internal/mlkit_vision_text_common/z;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzw;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/x;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/z;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/x;->a:Ljava/lang/Object;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/z;->f(Lcom/google/android/gms/internal/mlkit_vision_text_common/z;Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/x;->b:I

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/x;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/x;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/z;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/z;->o()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/x;->a:Ljava/lang/Object;

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/x;->a()V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/x;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/x;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/z;

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/z;->m(Lcom/google/android/gms/internal/mlkit_vision_text_common/z;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/x;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/z;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/z;->o()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/x;->a:Ljava/lang/Object;

    .line 2
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/x;->a()V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/x;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/x;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/z;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/x;->a:Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/z;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/x;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/z;

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/z;->m(Lcom/google/android/gms/internal/mlkit_vision_text_common/z;I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/x;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/z;

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/x;->b:I

    .line 6
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/z;->p(Lcom/google/android/gms/internal/mlkit_vision_text_common/z;ILjava/lang/Object;)V

    return-object v0
.end method
