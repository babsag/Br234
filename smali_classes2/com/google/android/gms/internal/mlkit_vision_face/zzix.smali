.class public final Lcom/google/android/gms/internal/mlkit_vision_face/zzix;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-face-detection@@17.1.0"

# interfaces
.implements Lcom/google/firebase/encoders/config/Configurator;


# static fields
.field public static final zza:Lcom/google/firebase/encoders/config/Configurator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzix;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzix;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzix;->zza:Lcom/google/firebase/encoders/config/Configurator;

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
    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkw;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/k3;->a:Lcom/google/android/gms/internal/mlkit_vision_face/k3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmv;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/j5;->a:Lcom/google/android/gms/internal/mlkit_vision_face/j5;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkx;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/l3;->a:Lcom/google/android/gms/internal/mlkit_vision_face/l3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzla;

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/n3;->a:Lcom/google/android/gms/internal/mlkit_vision_face/n3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzky;

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/m3;->a:Lcom/google/android/gms/internal/mlkit_vision_face/m3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkz;

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/o3;->a:Lcom/google/android/gms/internal/mlkit_vision_face/o3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjr;

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/t2;->a:Lcom/google/android/gms/internal/mlkit_vision_face/t2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjq;

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/s2;->a:Lcom/google/android/gms/internal/mlkit_vision_face/s2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkl;

    .line 9
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/d3;->a:Lcom/google/android/gms/internal/mlkit_vision_face/d3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmp;

    .line 10
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/b5;->a:Lcom/google/android/gms/internal/mlkit_vision_face/b5;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjp;

    .line 11
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/r2;->a:Lcom/google/android/gms/internal/mlkit_vision_face/r2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjo;

    .line 12
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/q2;->a:Lcom/google/android/gms/internal/mlkit_vision_face/q2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzll;

    .line 13
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/z3;->a:Lcom/google/android/gms/internal/mlkit_vision_face/z3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zznn;

    .line 14
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/z2;->a:Lcom/google/android/gms/internal/mlkit_vision_face/z2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkh;

    .line 15
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/b3;->a:Lcom/google/android/gms/internal/mlkit_vision_face/b3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkd;

    .line 16
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/y2;->a:Lcom/google/android/gms/internal/mlkit_vision_face/y2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzlo;

    .line 17
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/a4;->a:Lcom/google/android/gms/internal/mlkit_vision_face/a4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmm;

    .line 18
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/y4;->a:Lcom/google/android/gms/internal/mlkit_vision_face/y4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmn;

    .line 19
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/z4;->a:Lcom/google/android/gms/internal/mlkit_vision_face/z4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzml;

    .line 20
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/x4;->a:Lcom/google/android/gms/internal/mlkit_vision_face/x4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzle;

    .line 21
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/u3;->a:Lcom/google/android/gms/internal/mlkit_vision_face/u3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zznm;

    .line 22
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/a2;->a:Lcom/google/android/gms/internal/mlkit_vision_face/a2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzlf;

    .line 23
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/v3;->a:Lcom/google/android/gms/internal/mlkit_vision_face/v3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzlp;

    .line 24
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/b4;->a:Lcom/google/android/gms/internal/mlkit_vision_face/b4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzls;

    .line 25
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/e4;->a:Lcom/google/android/gms/internal/mlkit_vision_face/e4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzlr;

    .line 26
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/d4;->a:Lcom/google/android/gms/internal/mlkit_vision_face/d4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzlq;

    .line 27
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/c4;->a:Lcom/google/android/gms/internal/mlkit_vision_face/c4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzlx;

    .line 28
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/j4;->a:Lcom/google/android/gms/internal/mlkit_vision_face/j4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzly;

    .line 29
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/k4;->a:Lcom/google/android/gms/internal/mlkit_vision_face/k4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzma;

    .line 30
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/m4;->a:Lcom/google/android/gms/internal/mlkit_vision_face/m4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzlz;

    .line 31
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/l4;->a:Lcom/google/android/gms/internal/mlkit_vision_face/l4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzld;

    .line 32
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/t3;->a:Lcom/google/android/gms/internal/mlkit_vision_face/t3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmb;

    .line 33
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/n4;->a:Lcom/google/android/gms/internal/mlkit_vision_face/n4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face/o4;->a:Lcom/google/android/gms/internal/mlkit_vision_face/o4;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzmc;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmd;

    .line 35
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/p4;->a:Lcom/google/android/gms/internal/mlkit_vision_face/p4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzme;

    .line 36
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/q4;->a:Lcom/google/android/gms/internal/mlkit_vision_face/q4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmk;

    .line 37
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/v4;->a:Lcom/google/android/gms/internal/mlkit_vision_face/v4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmj;

    .line 38
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/w4;->a:Lcom/google/android/gms/internal/mlkit_vision_face/w4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzlw;

    .line 39
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/f4;->a:Lcom/google/android/gms/internal/mlkit_vision_face/f4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkp;

    .line 40
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/i3;->a:Lcom/google/android/gms/internal/mlkit_vision_face/i3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzlu;

    .line 41
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/h4;->a:Lcom/google/android/gms/internal/mlkit_vision_face/h4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzlt;

    .line 42
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/g4;->a:Lcom/google/android/gms/internal/mlkit_vision_face/g4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzlv;

    .line 43
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/i4;->a:Lcom/google/android/gms/internal/mlkit_vision_face/i4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmo;

    .line 44
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/a5;->a:Lcom/google/android/gms/internal/mlkit_vision_face/a5;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmz;

    .line 45
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/n5;->a:Lcom/google/android/gms/internal/mlkit_vision_face/n5;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjd;

    .line 46
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/f2;->a:Lcom/google/android/gms/internal/mlkit_vision_face/f2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjb;

    .line 47
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/d2;->a:Lcom/google/android/gms/internal/mlkit_vision_face/d2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzja;

    .line 48
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/c2;->a:Lcom/google/android/gms/internal/mlkit_vision_face/c2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjc;

    .line 49
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/e2;->a:Lcom/google/android/gms/internal/mlkit_vision_face/e2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjf;

    .line 50
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/h2;->a:Lcom/google/android/gms/internal/mlkit_vision_face/h2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzje;

    .line 51
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/g2;->a:Lcom/google/android/gms/internal/mlkit_vision_face/g2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjg;

    .line 52
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/i2;->a:Lcom/google/android/gms/internal/mlkit_vision_face/i2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjh;

    .line 53
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/j2;->a:Lcom/google/android/gms/internal/mlkit_vision_face/j2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzji;

    .line 54
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/k2;->a:Lcom/google/android/gms/internal/mlkit_vision_face/k2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjj;

    .line 55
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/l2;->a:Lcom/google/android/gms/internal/mlkit_vision_face/l2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjk;

    .line 56
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/m2;->a:Lcom/google/android/gms/internal/mlkit_vision_face/m2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzec;

    .line 57
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/w1;->a:Lcom/google/android/gms/internal/mlkit_vision_face/w1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzee;

    .line 58
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/y1;->a:Lcom/google/android/gms/internal/mlkit_vision_face/y1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzed;

    .line 59
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/x1;->a:Lcom/google/android/gms/internal/mlkit_vision_face/x1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkn;

    .line 60
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/g3;->a:Lcom/google/android/gms/internal/mlkit_vision_face/g3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjs;

    .line 61
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/u2;->a:Lcom/google/android/gms/internal/mlkit_vision_face/u2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdd;

    .line 62
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/a1;->a:Lcom/google/android/gms/internal/mlkit_vision_face/a1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;

    .line 63
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/b1;->a:Lcom/google/android/gms/internal/mlkit_vision_face/b1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjv;

    .line 64
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/w2;->a:Lcom/google/android/gms/internal/mlkit_vision_face/w2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdf;

    .line 65
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/c1;->a:Lcom/google/android/gms/internal/mlkit_vision_face/c1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzde;

    .line 66
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/d1;->a:Lcom/google/android/gms/internal/mlkit_vision_face/d1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdp;

    .line 67
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/i1;->a:Lcom/google/android/gms/internal/mlkit_vision_face/i1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 68
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face/j1;->a:Lcom/google/android/gms/internal/mlkit_vision_face/j1;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzdn;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdh;

    .line 69
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/e1;->a:Lcom/google/android/gms/internal/mlkit_vision_face/e1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdg;

    .line 70
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/f1;->a:Lcom/google/android/gms/internal/mlkit_vision_face/f1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdr;

    .line 71
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/k1;->a:Lcom/google/android/gms/internal/mlkit_vision_face/k1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdq;

    .line 72
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/l1;->a:Lcom/google/android/gms/internal/mlkit_vision_face/l1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdt;

    .line 73
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/m1;->a:Lcom/google/android/gms/internal/mlkit_vision_face/m1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzds;

    .line 74
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/n1;->a:Lcom/google/android/gms/internal/mlkit_vision_face/n1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzeb;

    .line 75
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/u1;->a:Lcom/google/android/gms/internal/mlkit_vision_face/u1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzea;

    .line 76
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/v1;->a:Lcom/google/android/gms/internal/mlkit_vision_face/v1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdv;

    .line 77
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/o1;->a:Lcom/google/android/gms/internal/mlkit_vision_face/o1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdu;

    .line 78
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/p1;->a:Lcom/google/android/gms/internal/mlkit_vision_face/p1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdx;

    .line 79
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/q1;->a:Lcom/google/android/gms/internal/mlkit_vision_face/q1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdw;

    .line 80
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/r1;->a:Lcom/google/android/gms/internal/mlkit_vision_face/r1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zznh;

    .line 81
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/e5;->a:Lcom/google/android/gms/internal/mlkit_vision_face/e5;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzna;

    .line 82
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/v2;->a:Lcom/google/android/gms/internal/mlkit_vision_face/v2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzne;

    .line 83
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/s3;->a:Lcom/google/android/gms/internal/mlkit_vision_face/s3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zznd;

    .line 84
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/r3;->a:Lcom/google/android/gms/internal/mlkit_vision_face/r3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zznb;

    .line 85
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/a3;->a:Lcom/google/android/gms/internal/mlkit_vision_face/a3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzng;

    .line 86
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/d5;->a:Lcom/google/android/gms/internal/mlkit_vision_face/d5;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zznf;

    .line 87
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/c5;->a:Lcom/google/android/gms/internal/mlkit_vision_face/c5;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzni;

    .line 88
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/f5;->a:Lcom/google/android/gms/internal/mlkit_vision_face/f5;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zznc;

    .line 89
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/e3;->a:Lcom/google/android/gms/internal/mlkit_vision_face/e3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zznl;

    .line 90
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/p5;->a:Lcom/google/android/gms/internal/mlkit_vision_face/p5;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zznk;

    .line 91
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/q5;->a:Lcom/google/android/gms/internal/mlkit_vision_face/q5;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zznj;

    .line 92
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/o5;->a:Lcom/google/android/gms/internal/mlkit_vision_face/o5;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmq;

    .line 93
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/g5;->a:Lcom/google/android/gms/internal/mlkit_vision_face/g5;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkm;

    .line 94
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/f3;->a:Lcom/google/android/gms/internal/mlkit_vision_face/f3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkq;

    .line 95
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/j3;->a:Lcom/google/android/gms/internal/mlkit_vision_face/j3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zziz;

    .line 96
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/b2;->a:Lcom/google/android/gms/internal/mlkit_vision_face/b2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzki;

    .line 97
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/c3;->a:Lcom/google/android/gms/internal/mlkit_vision_face/c3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzko;

    .line 98
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/h3;->a:Lcom/google/android/gms/internal/mlkit_vision_face/h3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjw;

    .line 99
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/x2;->a:Lcom/google/android/gms/internal/mlkit_vision_face/x2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzlc;

    .line 100
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/q3;->a:Lcom/google/android/gms/internal/mlkit_vision_face/q3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzlb;

    .line 101
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/p3;->a:Lcom/google/android/gms/internal/mlkit_vision_face/p3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 102
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face/z0;->a:Lcom/google/android/gms/internal/mlkit_vision_face/z0;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzdb;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmw;

    .line 103
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/k5;->a:Lcom/google/android/gms/internal/mlkit_vision_face/k5;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmy;

    .line 104
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/m5;->a:Lcom/google/android/gms/internal/mlkit_vision_face/m5;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmx;

    .line 105
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/l5;->a:Lcom/google/android/gms/internal/mlkit_vision_face/l5;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zziy;

    .line 106
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/z1;->a:Lcom/google/android/gms/internal/mlkit_vision_face/z1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjn;

    .line 107
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/p2;->a:Lcom/google/android/gms/internal/mlkit_vision_face/p2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjm;

    .line 108
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/o2;->a:Lcom/google/android/gms/internal/mlkit_vision_face/o2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;

    .line 109
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/n2;->a:Lcom/google/android/gms/internal/mlkit_vision_face/n2;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzlg;

    .line 110
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/w3;->a:Lcom/google/android/gms/internal/mlkit_vision_face/w3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzli;

    .line 111
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/y3;->a:Lcom/google/android/gms/internal/mlkit_vision_face/y3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzlh;

    .line 112
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/x3;->a:Lcom/google/android/gms/internal/mlkit_vision_face/x3;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;

    .line 113
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/g1;->a:Lcom/google/android/gms/internal/mlkit_vision_face/g1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdi;

    .line 114
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/h1;->a:Lcom/google/android/gms/internal/mlkit_vision_face/h1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmf;

    .line 115
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/r4;->a:Lcom/google/android/gms/internal/mlkit_vision_face/r4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmi;

    .line 116
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/u4;->a:Lcom/google/android/gms/internal/mlkit_vision_face/u4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmg;

    .line 117
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/s4;->a:Lcom/google/android/gms/internal/mlkit_vision_face/s4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmh;

    .line 118
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/t4;->a:Lcom/google/android/gms/internal/mlkit_vision_face/t4;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdz;

    .line 119
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/s1;->a:Lcom/google/android/gms/internal/mlkit_vision_face/s1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdy;

    .line 120
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/t1;->a:Lcom/google/android/gms/internal/mlkit_vision_face/t1;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzms;

    .line 121
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/i5;->a:Lcom/google/android/gms/internal/mlkit_vision_face/i5;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzmr;

    .line 122
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/h5;->a:Lcom/google/android/gms/internal/mlkit_vision_face/h5;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    return-void
.end method
