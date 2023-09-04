.class public final Lcom/google/android/gms/internal/mlkit_common/zzhk;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.5.0"

# interfaces
.implements Lcom/google/firebase/encoders/config/Configurator;


# static fields
.field public static final zza:Lcom/google/firebase/encoders/config/Configurator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzhk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzhk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzhk;->zza:Lcom/google/firebase/encoders/config/Configurator;

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
    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzjc;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/f2;->a:Lcom/google/android/gms/internal/mlkit_common/f2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzlg;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/e4;->a:Lcom/google/android/gms/internal/mlkit_common/e4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzjg;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/g2;->a:Lcom/google/android/gms/internal/mlkit_common/g2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzjp;

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/i2;->a:Lcom/google/android/gms/internal/mlkit_common/i2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzjl;

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/h2;->a:Lcom/google/android/gms/internal/mlkit_common/h2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzjn;

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/j2;->a:Lcom/google/android/gms/internal/mlkit_common/j2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzie;

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/o1;->a:Lcom/google/android/gms/internal/mlkit_common/o1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzid;

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/n1;->a:Lcom/google/android/gms/internal/mlkit_common/n1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzin;

    .line 9
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/y1;->a:Lcom/google/android/gms/internal/mlkit_common/y1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzla;

    .line 10
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/w3;->a:Lcom/google/android/gms/internal/mlkit_common/w3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzic;

    .line 11
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/m1;->a:Lcom/google/android/gms/internal/mlkit_common/m1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzib;

    .line 12
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/l1;->a:Lcom/google/android/gms/internal/mlkit_common/l1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzjy;

    .line 13
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/u2;->a:Lcom/google/android/gms/internal/mlkit_common/u2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzly;

    .line 14
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/u1;->a:Lcom/google/android/gms/internal/mlkit_common/u1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzil;

    .line 15
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/w1;->a:Lcom/google/android/gms/internal/mlkit_common/w1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzik;

    .line 16
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/t1;->a:Lcom/google/android/gms/internal/mlkit_common/t1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzjz;

    .line 17
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/v2;->a:Lcom/google/android/gms/internal/mlkit_common/v2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzkx;

    .line 18
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/t3;->a:Lcom/google/android/gms/internal/mlkit_common/t3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzky;

    .line 19
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/u3;->a:Lcom/google/android/gms/internal/mlkit_common/u3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzkw;

    .line 20
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/s3;->a:Lcom/google/android/gms/internal/mlkit_common/s3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzjt;

    .line 21
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/p2;->a:Lcom/google/android/gms/internal/mlkit_common/p2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzlx;

    .line 22
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/v0;->a:Lcom/google/android/gms/internal/mlkit_common/v0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzju;

    .line 23
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/q2;->a:Lcom/google/android/gms/internal/mlkit_common/q2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzka;

    .line 24
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/w2;->a:Lcom/google/android/gms/internal/mlkit_common/w2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzkd;

    .line 25
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/z2;->a:Lcom/google/android/gms/internal/mlkit_common/z2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzkc;

    .line 26
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/y2;->a:Lcom/google/android/gms/internal/mlkit_common/y2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzkb;

    .line 27
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/x2;->a:Lcom/google/android/gms/internal/mlkit_common/x2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzki;

    .line 28
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/e3;->a:Lcom/google/android/gms/internal/mlkit_common/e3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzkj;

    .line 29
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/f3;->a:Lcom/google/android/gms/internal/mlkit_common/f3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzkl;

    .line 30
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/h3;->a:Lcom/google/android/gms/internal/mlkit_common/h3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzkk;

    .line 31
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/g3;->a:Lcom/google/android/gms/internal/mlkit_common/g3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzjs;

    .line 32
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/o2;->a:Lcom/google/android/gms/internal/mlkit_common/o2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzkm;

    .line 33
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/i3;->a:Lcom/google/android/gms/internal/mlkit_common/i3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/j3;->a:Lcom/google/android/gms/internal/mlkit_common/j3;

    const-class v1, Lcom/google/android/gms/internal/mlkit_common/zzkn;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzko;

    .line 35
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/k3;->a:Lcom/google/android/gms/internal/mlkit_common/k3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzkp;

    .line 36
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/l3;->a:Lcom/google/android/gms/internal/mlkit_common/l3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzkv;

    .line 37
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/q3;->a:Lcom/google/android/gms/internal/mlkit_common/q3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzku;

    .line 38
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/r3;->a:Lcom/google/android/gms/internal/mlkit_common/r3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzkh;

    .line 39
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/a3;->a:Lcom/google/android/gms/internal/mlkit_common/a3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzit;

    .line 40
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/d2;->a:Lcom/google/android/gms/internal/mlkit_common/d2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzkf;

    .line 41
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/c3;->a:Lcom/google/android/gms/internal/mlkit_common/c3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzke;

    .line 42
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/b3;->a:Lcom/google/android/gms/internal/mlkit_common/b3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzkg;

    .line 43
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/d3;->a:Lcom/google/android/gms/internal/mlkit_common/d3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzkz;

    .line 44
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/v3;->a:Lcom/google/android/gms/internal/mlkit_common/v3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzlk;

    .line 45
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/i4;->a:Lcom/google/android/gms/internal/mlkit_common/i4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzhq;

    .line 46
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/a1;->a:Lcom/google/android/gms/internal/mlkit_common/a1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzho;

    .line 47
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/y0;->a:Lcom/google/android/gms/internal/mlkit_common/y0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzhn;

    .line 48
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/x0;->a:Lcom/google/android/gms/internal/mlkit_common/x0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzhp;

    .line 49
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/z0;->a:Lcom/google/android/gms/internal/mlkit_common/z0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzhs;

    .line 50
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/c1;->a:Lcom/google/android/gms/internal/mlkit_common/c1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzhr;

    .line 51
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/b1;->a:Lcom/google/android/gms/internal/mlkit_common/b1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzht;

    .line 52
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/d1;->a:Lcom/google/android/gms/internal/mlkit_common/d1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzhu;

    .line 53
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/e1;->a:Lcom/google/android/gms/internal/mlkit_common/e1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzhv;

    .line 54
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/f1;->a:Lcom/google/android/gms/internal/mlkit_common/f1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzhw;

    .line 55
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/g1;->a:Lcom/google/android/gms/internal/mlkit_common/g1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzhx;

    .line 56
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/h1;->a:Lcom/google/android/gms/internal/mlkit_common/h1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzcp;

    .line 57
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/r0;->a:Lcom/google/android/gms/internal/mlkit_common/r0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzcr;

    .line 58
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/t0;->a:Lcom/google/android/gms/internal/mlkit_common/t0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzcq;

    .line 59
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/s0;->a:Lcom/google/android/gms/internal/mlkit_common/s0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzir;

    .line 60
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/b2;->a:Lcom/google/android/gms/internal/mlkit_common/b2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzih;

    .line 61
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/p1;->a:Lcom/google/android/gms/internal/mlkit_common/p1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzbu;

    .line 62
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/v;->a:Lcom/google/android/gms/internal/mlkit_common/v;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzbt;

    .line 63
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/w;->a:Lcom/google/android/gms/internal/mlkit_common/w;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzii;

    .line 64
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/r1;->a:Lcom/google/android/gms/internal/mlkit_common/r1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzbw;

    .line 65
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/x;->a:Lcom/google/android/gms/internal/mlkit_common/x;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzbv;

    .line 66
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/y;->a:Lcom/google/android/gms/internal/mlkit_common/y;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzcc;

    .line 67
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/d0;->a:Lcom/google/android/gms/internal/mlkit_common/d0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 68
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/e0;->a:Lcom/google/android/gms/internal/mlkit_common/e0;

    const-class v1, Lcom/google/android/gms/internal/mlkit_common/zzcb;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzby;

    .line 69
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/z;->a:Lcom/google/android/gms/internal/mlkit_common/z;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzbx;

    .line 70
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/a0;->a:Lcom/google/android/gms/internal/mlkit_common/a0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzce;

    .line 71
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/f0;->a:Lcom/google/android/gms/internal/mlkit_common/f0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzcd;

    .line 72
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/g0;->a:Lcom/google/android/gms/internal/mlkit_common/g0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzcg;

    .line 73
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/h0;->a:Lcom/google/android/gms/internal/mlkit_common/h0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzcf;

    .line 74
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/i0;->a:Lcom/google/android/gms/internal/mlkit_common/i0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzco;

    .line 75
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/p0;->a:Lcom/google/android/gms/internal/mlkit_common/p0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzcn;

    .line 76
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/q0;->a:Lcom/google/android/gms/internal/mlkit_common/q0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzci;

    .line 77
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/j0;->a:Lcom/google/android/gms/internal/mlkit_common/j0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzch;

    .line 78
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/k0;->a:Lcom/google/android/gms/internal/mlkit_common/k0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzck;

    .line 79
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/l0;->a:Lcom/google/android/gms/internal/mlkit_common/l0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzcj;

    .line 80
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/m0;->a:Lcom/google/android/gms/internal/mlkit_common/m0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzls;

    .line 81
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/z3;->a:Lcom/google/android/gms/internal/mlkit_common/z3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzll;

    .line 82
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/q1;->a:Lcom/google/android/gms/internal/mlkit_common/q1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzlp;

    .line 83
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/n2;->a:Lcom/google/android/gms/internal/mlkit_common/n2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzlo;

    .line 84
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/m2;->a:Lcom/google/android/gms/internal/mlkit_common/m2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzlm;

    .line 85
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/v1;->a:Lcom/google/android/gms/internal/mlkit_common/v1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzlr;

    .line 86
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/y3;->a:Lcom/google/android/gms/internal/mlkit_common/y3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzlq;

    .line 87
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/x3;->a:Lcom/google/android/gms/internal/mlkit_common/x3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzlt;

    .line 88
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/a4;->a:Lcom/google/android/gms/internal/mlkit_common/a4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzln;

    .line 89
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/z1;->a:Lcom/google/android/gms/internal/mlkit_common/z1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzlw;

    .line 90
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/k4;->a:Lcom/google/android/gms/internal/mlkit_common/k4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzlv;

    .line 91
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/l4;->a:Lcom/google/android/gms/internal/mlkit_common/l4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzlu;

    .line 92
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/j4;->a:Lcom/google/android/gms/internal/mlkit_common/j4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzlb;

    .line 93
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/b4;->a:Lcom/google/android/gms/internal/mlkit_common/b4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzio;

    .line 94
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/a2;->a:Lcom/google/android/gms/internal/mlkit_common/a2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzix;

    .line 95
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/e2;->a:Lcom/google/android/gms/internal/mlkit_common/e2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzhm;

    .line 96
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/w0;->a:Lcom/google/android/gms/internal/mlkit_common/w0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzim;

    .line 97
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/x1;->a:Lcom/google/android/gms/internal/mlkit_common/x1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzis;

    .line 98
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/c2;->a:Lcom/google/android/gms/internal/mlkit_common/c2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzij;

    .line 99
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/s1;->a:Lcom/google/android/gms/internal/mlkit_common/s1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzjr;

    .line 100
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/l2;->a:Lcom/google/android/gms/internal/mlkit_common/l2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzjq;

    .line 101
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/k2;->a:Lcom/google/android/gms/internal/mlkit_common/k2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 102
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/u;->a:Lcom/google/android/gms/internal/mlkit_common/u;

    const-class v1, Lcom/google/android/gms/internal/mlkit_common/zzbs;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzlh;

    .line 103
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/f4;->a:Lcom/google/android/gms/internal/mlkit_common/f4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzlj;

    .line 104
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/h4;->a:Lcom/google/android/gms/internal/mlkit_common/h4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzli;

    .line 105
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/g4;->a:Lcom/google/android/gms/internal/mlkit_common/g4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzhl;

    .line 106
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/u0;->a:Lcom/google/android/gms/internal/mlkit_common/u0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzia;

    .line 107
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/k1;->a:Lcom/google/android/gms/internal/mlkit_common/k1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzhz;

    .line 108
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/j1;->a:Lcom/google/android/gms/internal/mlkit_common/j1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzhy;

    .line 109
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/i1;->a:Lcom/google/android/gms/internal/mlkit_common/i1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzjv;

    .line 110
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/r2;->a:Lcom/google/android/gms/internal/mlkit_common/r2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzjx;

    .line 111
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/t2;->a:Lcom/google/android/gms/internal/mlkit_common/t2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzjw;

    .line 112
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/s2;->a:Lcom/google/android/gms/internal/mlkit_common/s2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzca;

    .line 113
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/b0;->a:Lcom/google/android/gms/internal/mlkit_common/b0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzbz;

    .line 114
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/c0;->a:Lcom/google/android/gms/internal/mlkit_common/c0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzkq;

    .line 115
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/m3;->a:Lcom/google/android/gms/internal/mlkit_common/m3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzkt;

    .line 116
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/p3;->a:Lcom/google/android/gms/internal/mlkit_common/p3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzkr;

    .line 117
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/n3;->a:Lcom/google/android/gms/internal/mlkit_common/n3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzks;

    .line 118
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/o3;->a:Lcom/google/android/gms/internal/mlkit_common/o3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzcm;

    .line 119
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/n0;->a:Lcom/google/android/gms/internal/mlkit_common/n0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzcl;

    .line 120
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/o0;->a:Lcom/google/android/gms/internal/mlkit_common/o0;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzld;

    .line 121
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/d4;->a:Lcom/google/android/gms/internal/mlkit_common/d4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzlc;

    .line 122
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/c4;->a:Lcom/google/android/gms/internal/mlkit_common/c4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    return-void
.end method
