.class public final Lcom/google/android/gms/internal/measurement/zzck$zzb;
.super Lcom/google/android/gms/internal/measurement/zzhz;
.source "com.google.android.gms:play-services-measurement@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzck$zzb$zzb;,
        Lcom/google/android/gms/internal/measurement/zzck$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhz<",
        "Lcom/google/android/gms/internal/measurement/zzck$zzb;",
        "Lcom/google/android/gms/internal/measurement/zzck$zzb$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjj;"
    }
.end annotation


# static fields
.field private static final zzk:Lcom/google/android/gms/internal/measurement/zzck$zzb;

.field private static volatile zzl:Lcom/google/android/gms/internal/measurement/zzju;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzju<",
            "Lcom/google/android/gms/internal/measurement/zzck$zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Z

.field private zzg:J

.field private zzh:D

.field private zzi:Lcom/google/android/gms/internal/measurement/zzii;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzii<",
            "Lcom/google/android/gms/internal/measurement/zzck$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private zzj:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzck$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzck$zzb;-><init>()V

    .line 2
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzck$zzb;->zzk:Lcom/google/android/gms/internal/measurement/zzck$zzb;

    .line 3
    const-class v1, Lcom/google/android/gms/internal/measurement/zzck$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzhz;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzhz;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzhz;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzck$zzb;->zze:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhz;->zzbr()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzck$zzb;->zzi:Lcom/google/android/gms/internal/measurement/zzii;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzck$zzb;->zzj:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/measurement/zzck$zzb;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzck$zzb;->zzk:Lcom/google/android/gms/internal/measurement/zzck$zzb;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const-class p2, Lcom/google/android/gms/internal/measurement/zzck$zzb;

    sget-object p3, Lcom/google/android/gms/internal/measurement/y0;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzck$zzb;->zzl:Lcom/google/android/gms/internal/measurement/zzju;

    if-nez p1, :cond_1

    .line 5
    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzck$zzb;->zzl:Lcom/google/android/gms/internal/measurement/zzju;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzhz$zzc;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzck$zzb;->zzk:Lcom/google/android/gms/internal/measurement/zzck$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzhz$zzc;-><init>(Lcom/google/android/gms/internal/measurement/zzhz;)V

    .line 8
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzck$zzb;->zzl:Lcom/google/android/gms/internal/measurement/zzju;

    .line 9
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 10
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzck$zzb;->zzk:Lcom/google/android/gms/internal/measurement/zzck$zzb;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "zzc"

    aput-object v1, p1, p3

    const-string p3, "zzd"

    aput-object p3, p1, v0

    const/4 p3, 0x2

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzck$zzb$zza;->zzb()Lcom/google/android/gms/internal/measurement/zzid;

    move-result-object v0

    aput-object v0, p1, p3

    const/4 p3, 0x3

    const-string v0, "zze"

    aput-object v0, p1, p3

    const/4 p3, 0x4

    const-string v0, "zzf"

    aput-object v0, p1, p3

    const/4 p3, 0x5

    const-string v0, "zzg"

    aput-object v0, p1, p3

    const/4 p3, 0x6

    const-string v0, "zzh"

    aput-object v0, p1, p3

    const/4 p3, 0x7

    const-string v0, "zzi"

    aput-object v0, p1, p3

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const/16 p2, 0x9

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0001\u0000\u0001\u100c\u0000\u0002\u1008\u0001\u0003\u1007\u0002\u0004\u1002\u0003\u0005\u1000\u0004\u0006\u001b\u0007\u1008\u0005"

    .line 12
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzck$zzb;->zzk:Lcom/google/android/gms/internal/measurement/zzck$zzb;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzhz;->zza(Lcom/google/android/gms/internal/measurement/zzjh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzck$zzb$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzck$zzb$zzb;-><init>(Lcom/google/android/gms/internal/measurement/y0;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzck$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzck$zzb;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
