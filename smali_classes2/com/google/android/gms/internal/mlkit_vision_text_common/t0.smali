.class final Lcom/google/android/gms/internal/mlkit_vision_text_common/t0;
.super Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbm;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@18.0.0"


# instance fields
.field private final transient a:[Ljava/lang/Object;

.field private final transient b:I

.field private final transient c:I


# direct methods
.method constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/t0;->a:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/t0;->b:I

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/t0;->c:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/t0;->c:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzaa;->zza(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/t0;->a:[Ljava/lang/Object;

    add-int/2addr p1, p1

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/t0;->b:I

    add-int/2addr p1, v1

    .line 2
    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/t0;->c:I

    return v0
.end method
