.class final Lcom/google/android/odml/image/f;
.super Ljava/lang/Object;
.source "com.google.android.odml:image@@1.0.0-beta1"

# interfaces
.implements Lcom/google/android/odml/image/g;


# instance fields
.field private final a:Ljava/nio/ByteBuffer;

.field private final b:Lcom/google/android/odml/image/ImageProperties;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/odml/image/f;->a:Ljava/nio/ByteBuffer;

    new-instance p1, Lcom/google/android/odml/image/b;

    invoke-direct {p1}, Lcom/google/android/odml/image/b;-><init>()V

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p1, v0}, Lcom/google/android/odml/image/h;->b(I)Lcom/google/android/odml/image/h;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/odml/image/h;->a(I)Lcom/google/android/odml/image/h;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/odml/image/h;->c()Lcom/google/android/odml/image/ImageProperties;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/odml/image/f;->b:Lcom/google/android/odml/image/ImageProperties;

    return-void
.end method


# virtual methods
.method public final a()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/odml/image/f;->a:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/odml/image/ImageProperties;
    .locals 1

    iget-object v0, p0, Lcom/google/android/odml/image/f;->b:Lcom/google/android/odml/image/ImageProperties;

    return-object v0
.end method

.method public final zzc()V
    .locals 0

    return-void
.end method
