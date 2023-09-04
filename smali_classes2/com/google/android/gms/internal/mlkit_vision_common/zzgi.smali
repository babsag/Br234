.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzgi;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@17.2.1"

# interfaces
.implements Lcom/google/firebase/encoders/config/Configurator;


# static fields
.field public static final zza:Lcom/google/firebase/encoders/config/Configurator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzgi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgi;->zza:Lcom/google/firebase/encoders/config/Configurator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhw;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/t1;->a:Lcom/google/android/gms/internal/mlkit_vision_common/t1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjr;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/s3;->a:Lcom/google/android/gms/internal/mlkit_vision_common/s3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhx;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/u1;->a:Lcom/google/android/gms/internal/mlkit_vision_common/u1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzia;

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/w1;->a:Lcom/google/android/gms/internal/mlkit_vision_common/w1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhy;

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/v1;->a:Lcom/google/android/gms/internal/mlkit_vision_common/v1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhz;

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/x1;->a:Lcom/google/android/gms/internal/mlkit_vision_common/x1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhc;

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/b1;->a:Lcom/google/android/gms/internal/mlkit_vision_common/b1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhb;

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/a1;->a:Lcom/google/android/gms/internal/mlkit_vision_common/a1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhk;

    .line 9
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/l1;->a:Lcom/google/android/gms/internal/mlkit_vision_common/l1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjl;

    .line 10
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/k3;->a:Lcom/google/android/gms/internal/mlkit_vision_common/k3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzha;

    .line 11
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/z0;->a:Lcom/google/android/gms/internal/mlkit_vision_common/z0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgz;

    .line 12
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/y0;->a:Lcom/google/android/gms/internal/mlkit_vision_common/y0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzij;

    .line 13
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/i2;->a:Lcom/google/android/gms/internal/mlkit_vision_common/i2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkk;

    .line 14
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/h1;->a:Lcom/google/android/gms/internal/mlkit_vision_common/h1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhi;

    .line 15
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/j1;->a:Lcom/google/android/gms/internal/mlkit_vision_common/j1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhg;

    .line 16
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/g1;->a:Lcom/google/android/gms/internal/mlkit_vision_common/g1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzik;

    .line 17
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/j2;->a:Lcom/google/android/gms/internal/mlkit_vision_common/j2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzji;

    .line 18
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/h3;->a:Lcom/google/android/gms/internal/mlkit_vision_common/h3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjj;

    .line 19
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/i3;->a:Lcom/google/android/gms/internal/mlkit_vision_common/i3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjh;

    .line 20
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/g3;->a:Lcom/google/android/gms/internal/mlkit_vision_common/g3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzie;

    .line 21
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/d2;->a:Lcom/google/android/gms/internal/mlkit_vision_common/d2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkj;

    .line 22
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/h0;->a:Lcom/google/android/gms/internal/mlkit_vision_common/h0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzif;

    .line 23
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/e2;->a:Lcom/google/android/gms/internal/mlkit_vision_common/e2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzip;

    .line 24
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/o2;->a:Lcom/google/android/gms/internal/mlkit_vision_common/o2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzis;

    .line 25
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/r2;->a:Lcom/google/android/gms/internal/mlkit_vision_common/r2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzir;

    .line 26
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/q2;->a:Lcom/google/android/gms/internal/mlkit_vision_common/q2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zziq;

    .line 27
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/p2;->a:Lcom/google/android/gms/internal/mlkit_vision_common/p2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzix;

    .line 28
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/w2;->a:Lcom/google/android/gms/internal/mlkit_vision_common/w2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zziy;

    .line 29
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/x2;->a:Lcom/google/android/gms/internal/mlkit_vision_common/x2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzja;

    .line 30
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/z2;->a:Lcom/google/android/gms/internal/mlkit_vision_common/z2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zziz;

    .line 31
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/y2;->a:Lcom/google/android/gms/internal/mlkit_vision_common/y2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzid;

    .line 32
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/c2;->a:Lcom/google/android/gms/internal/mlkit_vision_common/c2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjb;

    .line 33
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/a3;->a:Lcom/google/android/gms/internal/mlkit_vision_common/a3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/b3;->a:Lcom/google/android/gms/internal/mlkit_vision_common/b3;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzjc;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjd;

    .line 35
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/c3;->a:Lcom/google/android/gms/internal/mlkit_vision_common/c3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzje;

    .line 36
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/d3;->a:Lcom/google/android/gms/internal/mlkit_vision_common/d3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjg;

    .line 37
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/e3;->a:Lcom/google/android/gms/internal/mlkit_vision_common/e3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjf;

    .line 38
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/f3;->a:Lcom/google/android/gms/internal/mlkit_vision_common/f3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zziw;

    .line 39
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/s2;->a:Lcom/google/android/gms/internal/mlkit_vision_common/s2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;

    .line 40
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/q1;->a:Lcom/google/android/gms/internal/mlkit_vision_common/q1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zziu;

    .line 41
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/u2;->a:Lcom/google/android/gms/internal/mlkit_vision_common/u2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzit;

    .line 42
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/t2;->a:Lcom/google/android/gms/internal/mlkit_vision_common/t2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zziv;

    .line 43
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/v2;->a:Lcom/google/android/gms/internal/mlkit_vision_common/v2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjk;

    .line 44
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/j3;->a:Lcom/google/android/gms/internal/mlkit_vision_common/j3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjw;

    .line 45
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/x3;->a:Lcom/google/android/gms/internal/mlkit_vision_common/x3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgo;

    .line 46
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/m0;->a:Lcom/google/android/gms/internal/mlkit_vision_common/m0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgm;

    .line 47
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/k0;->a:Lcom/google/android/gms/internal/mlkit_vision_common/k0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgl;

    .line 48
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/j0;->a:Lcom/google/android/gms/internal/mlkit_vision_common/j0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgn;

    .line 49
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/l0;->a:Lcom/google/android/gms/internal/mlkit_vision_common/l0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgq;

    .line 50
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/o0;->a:Lcom/google/android/gms/internal/mlkit_vision_common/o0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgp;

    .line 51
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/n0;->a:Lcom/google/android/gms/internal/mlkit_vision_common/n0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgr;

    .line 52
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/p0;->a:Lcom/google/android/gms/internal/mlkit_vision_common/p0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgs;

    .line 53
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/q0;->a:Lcom/google/android/gms/internal/mlkit_vision_common/q0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgt;

    .line 54
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/s0;->a:Lcom/google/android/gms/internal/mlkit_vision_common/s0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgu;

    .line 55
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/t0;->a:Lcom/google/android/gms/internal/mlkit_vision_common/t0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgv;

    .line 56
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/u0;->a:Lcom/google/android/gms/internal/mlkit_vision_common/u0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbm;

    .line 57
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/d0;->a:Lcom/google/android/gms/internal/mlkit_vision_common/d0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbo;

    .line 58
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/f0;->a:Lcom/google/android/gms/internal/mlkit_vision_common/f0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbn;

    .line 59
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/e0;->a:Lcom/google/android/gms/internal/mlkit_vision_common/e0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhp;

    .line 60
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/o1;->a:Lcom/google/android/gms/internal/mlkit_vision_common/o1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhd;

    .line 61
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/c1;->a:Lcom/google/android/gms/internal/mlkit_vision_common/c1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzar;

    .line 62
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/g;->a:Lcom/google/android/gms/internal/mlkit_vision_common/g;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzaq;

    .line 63
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/h;->a:Lcom/google/android/gms/internal/mlkit_vision_common/h;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhe;

    .line 64
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/e1;->a:Lcom/google/android/gms/internal/mlkit_vision_common/e1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzat;

    .line 65
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/i;->a:Lcom/google/android/gms/internal/mlkit_vision_common/i;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzas;

    .line 66
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/j;->a:Lcom/google/android/gms/internal/mlkit_vision_common/j;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzaz;

    .line 67
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/o;->a:Lcom/google/android/gms/internal/mlkit_vision_common/o;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 68
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/p;->a:Lcom/google/android/gms/internal/mlkit_vision_common/p;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzay;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzav;

    .line 69
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/k;->a:Lcom/google/android/gms/internal/mlkit_vision_common/k;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzau;

    .line 70
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/l;->a:Lcom/google/android/gms/internal/mlkit_vision_common/l;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbd;

    .line 71
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/t;->a:Lcom/google/android/gms/internal/mlkit_vision_common/t;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbc;

    .line 72
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/u;->a:Lcom/google/android/gms/internal/mlkit_vision_common/u;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbf;

    .line 73
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/v;->a:Lcom/google/android/gms/internal/mlkit_vision_common/v;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbe;

    .line 74
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/w;->a:Lcom/google/android/gms/internal/mlkit_vision_common/w;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbl;

    .line 75
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/b0;->a:Lcom/google/android/gms/internal/mlkit_vision_common/b0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbk;

    .line 76
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/c0;->a:Lcom/google/android/gms/internal/mlkit_vision_common/c0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbh;

    .line 77
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/x;->a:Lcom/google/android/gms/internal/mlkit_vision_common/x;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbg;

    .line 78
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/y;->a:Lcom/google/android/gms/internal/mlkit_vision_common/y;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbj;

    .line 79
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/z;->a:Lcom/google/android/gms/internal/mlkit_vision_common/z;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbi;

    .line 80
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/a0;->a:Lcom/google/android/gms/internal/mlkit_vision_common/a0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzke;

    .line 81
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/n3;->a:Lcom/google/android/gms/internal/mlkit_vision_common/n3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjx;

    .line 82
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/d1;->a:Lcom/google/android/gms/internal/mlkit_vision_common/d1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkb;

    .line 83
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/b2;->a:Lcom/google/android/gms/internal/mlkit_vision_common/b2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzka;

    .line 84
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/a2;->a:Lcom/google/android/gms/internal/mlkit_vision_common/a2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjy;

    .line 85
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/i1;->a:Lcom/google/android/gms/internal/mlkit_vision_common/i1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkd;

    .line 86
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/m3;->a:Lcom/google/android/gms/internal/mlkit_vision_common/m3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkc;

    .line 87
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/l3;->a:Lcom/google/android/gms/internal/mlkit_vision_common/l3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkf;

    .line 88
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/o3;->a:Lcom/google/android/gms/internal/mlkit_vision_common/o3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjz;

    .line 89
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/m1;->a:Lcom/google/android/gms/internal/mlkit_vision_common/m1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzki;

    .line 90
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/z3;->a:Lcom/google/android/gms/internal/mlkit_vision_common/z3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkh;

    .line 91
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/a4;->a:Lcom/google/android/gms/internal/mlkit_vision_common/a4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkg;

    .line 92
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/y3;->a:Lcom/google/android/gms/internal/mlkit_vision_common/y3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjm;

    .line 93
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/p3;->a:Lcom/google/android/gms/internal/mlkit_vision_common/p3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzho;

    .line 94
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/n1;->a:Lcom/google/android/gms/internal/mlkit_vision_common/n1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhs;

    .line 95
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/r1;->a:Lcom/google/android/gms/internal/mlkit_vision_common/r1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgk;

    .line 96
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/i0;->a:Lcom/google/android/gms/internal/mlkit_vision_common/i0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhj;

    .line 97
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/k1;->a:Lcom/google/android/gms/internal/mlkit_vision_common/k1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhq;

    .line 98
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/p1;->a:Lcom/google/android/gms/internal/mlkit_vision_common/p1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzhf;

    .line 99
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/f1;->a:Lcom/google/android/gms/internal/mlkit_vision_common/f1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzic;

    .line 100
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/z1;->a:Lcom/google/android/gms/internal/mlkit_vision_common/z1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzib;

    .line 101
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/y1;->a:Lcom/google/android/gms/internal/mlkit_vision_common/y1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 102
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/f;->a:Lcom/google/android/gms/internal/mlkit_vision_common/f;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzap;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjt;

    .line 103
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/u3;->a:Lcom/google/android/gms/internal/mlkit_vision_common/u3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjv;

    .line 104
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/w3;->a:Lcom/google/android/gms/internal/mlkit_vision_common/w3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzju;

    .line 105
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/v3;->a:Lcom/google/android/gms/internal/mlkit_vision_common/v3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgj;

    .line 106
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/g0;->a:Lcom/google/android/gms/internal/mlkit_vision_common/g0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgy;

    .line 107
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/x0;->a:Lcom/google/android/gms/internal/mlkit_vision_common/x0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgx;

    .line 108
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/w0;->a:Lcom/google/android/gms/internal/mlkit_vision_common/w0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzgw;

    .line 109
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/v0;->a:Lcom/google/android/gms/internal/mlkit_vision_common/v0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzig;

    .line 110
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/f2;->a:Lcom/google/android/gms/internal/mlkit_vision_common/f2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzii;

    .line 111
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/h2;->a:Lcom/google/android/gms/internal/mlkit_vision_common/h2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzih;

    .line 112
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/g2;->a:Lcom/google/android/gms/internal/mlkit_vision_common/g2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzax;

    .line 113
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/m;->a:Lcom/google/android/gms/internal/mlkit_vision_common/m;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzaw;

    .line 114
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/n;->a:Lcom/google/android/gms/internal/mlkit_vision_common/n;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzil;

    .line 115
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/k2;->a:Lcom/google/android/gms/internal/mlkit_vision_common/k2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzio;

    .line 116
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/n2;->a:Lcom/google/android/gms/internal/mlkit_vision_common/n2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzim;

    .line 117
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/l2;->a:Lcom/google/android/gms/internal/mlkit_vision_common/l2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzin;

    .line 118
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/m2;->a:Lcom/google/android/gms/internal/mlkit_vision_common/m2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzbb;

    .line 119
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/r;->a:Lcom/google/android/gms/internal/mlkit_vision_common/r;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzba;

    .line 120
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/s;->a:Lcom/google/android/gms/internal/mlkit_vision_common/s;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjo;

    .line 121
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/r3;->a:Lcom/google/android/gms/internal/mlkit_vision_common/r3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjn;

    .line 122
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/q3;->a:Lcom/google/android/gms/internal/mlkit_vision_common/q3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzjs;

    .line 123
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/t3;->a:Lcom/google/android/gms/internal/mlkit_vision_common/t3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    return-void
.end method
