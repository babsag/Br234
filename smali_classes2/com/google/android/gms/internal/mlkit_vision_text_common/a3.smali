.class final Lcom/google/android/gms/internal/mlkit_vision_text_common/a3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@18.0.0"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# static fields
.field static final a:Lcom/google/android/gms/internal/mlkit_vision_text_common/a3;

.field private static final b:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final c:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final d:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final e:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final f:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final g:Lcom/google/firebase/encoders/FieldDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/a3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/a3;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/a3;

    const-string v0, "maxMs"

    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;-><init>()V

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;->zzb()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcz;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/a3;->b:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "minMs"

    .line 6
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;

    .line 7
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;-><init>()V

    const/4 v2, 0x2

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;->zzb()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcz;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/a3;->c:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "avgMs"

    .line 11
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;

    .line 12
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;-><init>()V

    const/4 v2, 0x3

    .line 13
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;->zzb()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcz;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/a3;->d:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "firstQuartileMs"

    .line 16
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;

    .line 17
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;-><init>()V

    const/4 v2, 0x4

    .line 18
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;->zzb()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcz;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/a3;->e:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "medianMs"

    .line 21
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;

    .line 22
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;-><init>()V

    const/4 v2, 0x5

    .line 23
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;->zzb()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcz;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/a3;->f:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "thirdQuartileMs"

    .line 26
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;

    .line 27
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;-><init>()V

    const/4 v2, 0x6

    .line 28
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;->zzb()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcz;

    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/a3;->g:Lcom/google/firebase/encoders/FieldDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkb;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/a3;->b:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkb;->zzc()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/a3;->c:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkb;->zze()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/a3;->d:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkb;->zza()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/a3;->e:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkb;->zzb()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/a3;->f:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkb;->zzd()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/a3;->g:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkb;->zzf()Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-void
.end method
