.class final Lcom/google/android/gms/internal/mlkit_common/q1;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.5.0"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# static fields
.field static final a:Lcom/google/android/gms/internal/mlkit_common/q1;

.field private static final b:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final c:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final d:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final e:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final f:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final g:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final h:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final i:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final j:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final k:Lcom/google/firebase/encoders/FieldDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/q1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/q1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/q1;->a:Lcom/google/android/gms/internal/mlkit_common/q1;

    const-string v0, "sdkVersion"

    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzbh;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzbh;-><init>()V

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzbh;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzbh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzbh;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzbl;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/q1;->b:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "osBuild"

    .line 6
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzbh;

    .line 7
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzbh;-><init>()V

    const/4 v2, 0x2

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzbh;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzbh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzbh;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzbl;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/q1;->c:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "brand"

    .line 11
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzbh;

    .line 12
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzbh;-><init>()V

    const/4 v2, 0x3

    .line 13
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzbh;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzbh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzbh;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzbl;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/q1;->d:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "device"

    .line 16
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzbh;

    .line 17
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzbh;-><init>()V

    const/4 v2, 0x4

    .line 18
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzbh;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzbh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzbh;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzbl;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/q1;->e:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "hardware"

    .line 21
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzbh;

    .line 22
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzbh;-><init>()V

    const/4 v2, 0x5

    .line 23
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzbh;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzbh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzbh;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzbl;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/q1;->f:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "manufacturer"

    .line 26
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzbh;

    .line 27
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzbh;-><init>()V

    const/4 v2, 0x6

    .line 28
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzbh;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzbh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzbh;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzbl;

    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/q1;->g:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "model"

    .line 31
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzbh;

    .line 32
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzbh;-><init>()V

    const/4 v2, 0x7

    .line 33
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzbh;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzbh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzbh;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzbl;

    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/q1;->h:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "product"

    .line 36
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzbh;

    .line 37
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzbh;-><init>()V

    const/16 v2, 0x8

    .line 38
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzbh;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzbh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzbh;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzbl;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/q1;->i:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "soc"

    .line 41
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzbh;

    .line 42
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzbh;-><init>()V

    const/16 v2, 0x9

    .line 43
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzbh;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzbh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzbh;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzbl;

    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/q1;->j:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "socMetaBuildId"

    .line 46
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzbh;

    .line 47
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzbh;-><init>()V

    const/16 v2, 0xa

    .line 48
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzbh;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzbh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzbh;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzbl;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/q1;->k:Lcom/google/firebase/encoders/FieldDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/zzll;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method
