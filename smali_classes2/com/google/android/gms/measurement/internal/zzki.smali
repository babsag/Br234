.class public Lcom/google/android/gms/measurement/internal/zzki;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/m4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/internal/zzki$a;
    }
.end annotation


# static fields
.field private static volatile zza:Lcom/google/android/gms/measurement/internal/zzki;


# instance fields
.field private final zzaa:Lcom/google/android/gms/measurement/internal/w7;

.field private zzb:Lcom/google/android/gms/measurement/internal/zzfp;

.field private zzc:Lcom/google/android/gms/measurement/internal/zzeu;

.field private zzd:Lcom/google/android/gms/measurement/internal/c;

.field private zze:Lcom/google/android/gms/measurement/internal/k3;

.field private zzf:Lcom/google/android/gms/measurement/internal/zzke;

.field private zzg:Lcom/google/android/gms/measurement/internal/a8;

.field private final zzh:Lcom/google/android/gms/measurement/internal/zzks;

.field private zzi:Lcom/google/android/gms/measurement/internal/s5;

.field private zzj:Lcom/google/android/gms/measurement/internal/zzjo;

.field private final zzk:Lcom/google/android/gms/measurement/internal/zzfv;

.field private zzl:Z

.field private zzm:Z

.field private zzn:J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private zzp:I

.field private zzq:I

.field private zzr:Z

.field private zzs:Z

.field private zzt:Z

.field private zzu:Ljava/nio/channels/FileLock;

.field private zzv:Ljava/nio/channels/FileChannel;

.field private zzw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzy:J

.field private final zzz:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzad;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzkq;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzki;-><init>(Lcom/google/android/gms/measurement/internal/zzkq;Lcom/google/android/gms/measurement/internal/zzfv;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzkq;Lcom/google/android/gms/measurement/internal/zzfv;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzl:Z

    .line 4
    new-instance p2, Lcom/google/android/gms/measurement/internal/u7;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/u7;-><init>(Lcom/google/android/gms/measurement/internal/zzki;)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzaa:Lcom/google/android/gms/measurement/internal/w7;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzkq;->zza:Landroid/content/Context;

    const/4 v0, 0x0

    .line 7
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzae;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzfv;

    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    const-wide/16 v0, -0x1

    .line 9
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzy:J

    .line 10
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzks;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzks;-><init>(Lcom/google/android/gms/measurement/internal/zzki;)V

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o7;->zzak()V

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzh:Lcom/google/android/gms/measurement/internal/zzks;

    .line 13
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzeu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzeu;-><init>(Lcom/google/android/gms/measurement/internal/zzki;)V

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o7;->zzak()V

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzc:Lcom/google/android/gms/measurement/internal/zzeu;

    .line 16
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzfp;-><init>(Lcom/google/android/gms/measurement/internal/zzki;)V

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o7;->zzak()V

    .line 18
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzb:Lcom/google/android/gms/measurement/internal/zzfp;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzz:Ljava/util/Map;

    .line 20
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzp()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object p2

    .line 21
    new-instance v0, Lcom/google/android/gms/measurement/internal/q7;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/q7;-><init>(Lcom/google/android/gms/measurement/internal/zzki;Lcom/google/android/gms/measurement/internal/zzkq;)V

    .line 22
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zza(Ljava/nio/channels/FileChannel;)I
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 921
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzx()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 922
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    .line 923
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 924
    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 925
    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-eq p1, v1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 926
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    .line 927
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    const-string v2, "Unexpected data length. Bytes read"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return v0

    .line 928
    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 929
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 930
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    .line 931
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    const-string v2, "Failed to read from channel"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return v0

    .line 932
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p1

    .line 933
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    const-string v1, "Bad channel to read from"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    return v0
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzn;Lcom/google/android/gms/measurement/internal/i3;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/i3;
    .locals 8

    .line 1117
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzad;->zza:Lcom/google/android/gms/measurement/internal/zzad;

    .line 1118
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1119
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v1

    .line 1120
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzat;->zzci:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1121
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 1122
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzw:Ljava/lang/String;

    .line 1123
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzad;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzad;->zzb(Lcom/google/android/gms/measurement/internal/zzad;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v0

    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_4

    .line 1124
    new-instance p2, Lcom/google/android/gms/measurement/internal/i3;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-direct {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/i3;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;Ljava/lang/String;)V

    .line 1125
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1126
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v2

    .line 1127
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzat;->zzci:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1128
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzad;->zze()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1129
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/measurement/internal/zzad;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/measurement/internal/i3;->c(Ljava/lang/String;)V

    .line 1130
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzad;->zzc()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1131
    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/i3;->C(Ljava/lang/String;)V

    goto :goto_0

    .line 1132
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzz()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/i3;->c(Ljava/lang/String;)V

    .line 1133
    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/i3;->C(Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 p3, 0x1

    goto :goto_1

    .line 1134
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1135
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v2

    .line 1136
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzat;->zzci:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1137
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzad;->zzc()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1138
    :cond_5
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i3;->J()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1139
    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/i3;->C(Ljava/lang/String;)V

    .line 1140
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 1141
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object p3

    .line 1142
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzat;->zzci:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {p3, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 1143
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzad;->zze()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1144
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/measurement/internal/zzad;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/i3;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 1145
    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzz()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/i3;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const/4 p3, 0x0

    .line 1146
    :goto_1
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i3;->A()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1147
    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/i3;->r(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 1148
    :cond_8
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i3;->D()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1149
    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/i3;->v(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 1150
    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznt;->zzb()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1151
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    .line 1152
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i3;->t()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzat;->zzbi:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1153
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzv:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i3;->G()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1154
    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzv:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/i3;->z(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 1155
    :cond_a
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzk:Ljava/lang/String;

    .line 1156
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i3;->M()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1157
    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzk:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/i3;->F(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 1158
    :cond_b
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zze:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_c

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i3;->Z()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-eqz v0, :cond_c

    .line 1159
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zze:J

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/i3;->y(J)V

    const/4 p3, 0x1

    .line 1160
    :cond_c
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    .line 1161
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i3;->T()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1162
    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/i3;->I(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 1163
    :cond_d
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzj:J

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i3;->V()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-eqz v0, :cond_e

    .line 1164
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzj:J

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/i3;->u(J)V

    const/4 p3, 0x1

    .line 1165
    :cond_e
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i3;->X()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1166
    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/i3;->L(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 1167
    :cond_f
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzf:J

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i3;->b0()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-eqz v0, :cond_10

    .line 1168
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzf:J

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/i3;->B(J)V

    const/4 p3, 0x1

    .line 1169
    :cond_10
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i3;->e0()Z

    move-result v2

    if-eq v0, v2, :cond_11

    .line 1170
    iget-boolean p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/i3;->e(Z)V

    const/4 p3, 0x1

    .line 1171
    :cond_11
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzg:Ljava/lang/String;

    .line 1172
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i3;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1173
    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzg:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/i3;->O(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 1174
    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    .line 1175
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzat;->zzbx:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1176
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzl:J

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i3;->k()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-eqz v0, :cond_13

    .line 1177
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzl:J

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/i3;->c0(J)V

    const/4 p3, 0x1

    .line 1178
    :cond_13
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzo:Z

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i3;->l()Z

    move-result v2

    if-eq v0, v2, :cond_14

    .line 1179
    iget-boolean p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzo:Z

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/i3;->s(Z)V

    const/4 p3, 0x1

    .line 1180
    :cond_14
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzp:Z

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i3;->m()Z

    move-result v2

    if-eq v0, v2, :cond_15

    .line 1181
    iget-boolean p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzp:Z

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/i3;->w(Z)V

    const/4 p3, 0x1

    .line 1182
    :cond_15
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzs:Ljava/lang/Boolean;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i3;->n()Ljava/lang/Boolean;

    move-result-object v2

    if-eq v0, v2, :cond_16

    .line 1183
    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzs:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/i3;->b(Ljava/lang/Boolean;)V

    const/4 p3, 0x1

    .line 1184
    :cond_16
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzt:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_17

    .line 1185
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i3;->d0()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_17

    .line 1186
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzt:J

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/i3;->E(J)V

    goto :goto_2

    :cond_17
    move v1, p3

    :goto_2
    if-eqz v1, :cond_18

    .line 1187
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/c;->u(Lcom/google/android/gms/measurement/internal/i3;)V

    :cond_18
    return-object p2
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzki;)Lcom/google/android/gms/measurement/internal/zzfv;
    .locals 0

    .line 1190
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    return-object p0
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/zzki;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzki;->zza:Lcom/google/android/gms/measurement/internal/zzki;

    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/google/android/gms/measurement/internal/zzki;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzki;->zza:Lcom/google/android/gms/measurement/internal/zzki;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzkq;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzki;

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzki;-><init>(Lcom/google/android/gms/measurement/internal/zzkq;)V

    .line 8
    sput-object p0, Lcom/google/android/gms/measurement/internal/zzki;->zza:Lcom/google/android/gms/measurement/internal/zzki;

    .line 9
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 10
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzki;->zza:Lcom/google/android/gms/measurement/internal/zzki;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzad;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 230
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    .line 232
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzat;->zzci:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzad;->zze()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 234
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzz()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;ILjava/lang/String;)V
    .locals 4
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 749
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 750
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "_err"

    if-ge v1, v2, :cond_1

    .line 751
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 752
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzm()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v0

    .line 753
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v0

    int-to-long v1, p1

    .line 754
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object p1

    .line 755
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    .line 756
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzm()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v0

    const-string v1, "_ev"

    .line 757
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v0

    .line 758
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object p2

    .line 759
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    .line 760
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zze;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zze;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 745
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 746
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 747
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 748
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;JZ)V
    .locals 9
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    if-eqz p4, :cond_0

    const-string v0, "_se"

    goto :goto_0

    :cond_0
    const-string v0, "_lte"

    .line 711
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/c;->T(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/v7;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 712
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/v7;->e:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    .line 713
    :cond_1
    new-instance v8, Lcom/google/android/gms/measurement/internal/v7;

    .line 714
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v2

    .line 715
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    .line 716
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/v7;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 717
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v3, "auto"

    move-object v1, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/v7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_2

    .line 718
    :cond_2
    :goto_1
    new-instance v8, Lcom/google/android/gms/measurement/internal/v7;

    .line 719
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v2

    .line 720
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 721
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    .line 722
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v3, "auto"

    move-object v1, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/v7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 723
    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzj()Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v1

    .line 724
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v1

    .line 725
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 726
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v1

    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/v7;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 727
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v1

    .line 728
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzcd$zzk;

    const/4 v2, 0x0

    .line 729
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 730
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zzk;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_4

    .line 731
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzk;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_4
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_6

    .line 732
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/google/android/gms/measurement/internal/c;->z(Lcom/google/android/gms/measurement/internal/v7;)Z

    if-eqz p4, :cond_5

    const-string p1, "session-scoped"

    goto :goto_3

    :cond_5
    const-string p1, "lifetime"

    .line 733
    :goto_3
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p2

    .line 734
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p2

    iget-object p3, v8, Lcom/google/android/gms/measurement/internal/v7;->e:Ljava/lang/Object;

    const-string p4, "Updated engagement user property. scope, value"

    .line 735
    invoke-virtual {p2, p4, p1, p3}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/i3;)V
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 823
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzx()V

    .line 824
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznt;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    .line 826
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->t()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzat;->zzbi:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 828
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->G()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 829
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 830
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->t()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 831
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 832
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 833
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->t()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 834
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    .line 835
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/i3;)Ljava/lang/String;

    move-result-object v0

    .line 836
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 837
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    .line 838
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    const-string v2, "Fetching remote configuration"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 839
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzc()Lcom/google/android/gms/measurement/internal/zzfp;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfp;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzca$zzb;

    move-result-object v1

    const/4 v2, 0x0

    .line 840
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzc()Lcom/google/android/gms/measurement/internal/zzfp;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzfp;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_2

    .line 841
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 842
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "If-Modified-Since"

    .line 843
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v1

    goto :goto_0

    :cond_2
    move-object v6, v2

    :goto_0
    const/4 v1, 0x1

    .line 844
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzr:Z

    .line 845
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzd()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v2

    .line 846
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->t()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/google/android/gms/measurement/internal/s7;

    invoke-direct {v7, p0}, Lcom/google/android/gms/measurement/internal/s7;-><init>(Lcom/google/android/gms/measurement/internal/zzki;)V

    .line 847
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/k4;->zzc()V

    .line 848
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o7;->zzaj()V

    .line 849
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/k4;->zzp()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/measurement/internal/g3;

    const/4 v5, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/g3;-><init>(Lcom/google/android/gms/measurement/internal/zzeu;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/e3;)V

    .line 852
    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzfo;->zzc(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 853
    :catch_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    .line 854
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 855
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->t()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    .line 856
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzki;Lcom/google/android/gms/measurement/internal/zzkq;)V
    .locals 0

    .line 1189
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/measurement/internal/zzkq;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzkq;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzp()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/k4;->zzc()V

    .line 13
    new-instance p1, Lcom/google/android/gms/measurement/internal/c;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/c;-><init>(Lcom/google/android/gms/measurement/internal/zzki;)V

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/o7;->zzak()V

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzd:Lcom/google/android/gms/measurement/internal/c;

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzb:Lcom/google/android/gms/measurement/internal/zzfp;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/a;)V

    .line 18
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzjo;-><init>(Lcom/google/android/gms/measurement/internal/zzki;)V

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/o7;->zzak()V

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzj:Lcom/google/android/gms/measurement/internal/zzjo;

    .line 21
    new-instance p1, Lcom/google/android/gms/measurement/internal/a8;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/a8;-><init>(Lcom/google/android/gms/measurement/internal/zzki;)V

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/o7;->zzak()V

    .line 23
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzg:Lcom/google/android/gms/measurement/internal/a8;

    .line 24
    new-instance p1, Lcom/google/android/gms/measurement/internal/s5;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/s5;-><init>(Lcom/google/android/gms/measurement/internal/zzki;)V

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/o7;->zzak()V

    .line 26
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzi:Lcom/google/android/gms/measurement/internal/s5;

    .line 27
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzke;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzke;-><init>(Lcom/google/android/gms/measurement/internal/zzki;)V

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/o7;->zzak()V

    .line 29
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzf:Lcom/google/android/gms/measurement/internal/zzke;

    .line 30
    new-instance p1, Lcom/google/android/gms/measurement/internal/k3;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/k3;-><init>(Lcom/google/android/gms/measurement/internal/zzki;)V

    .line 31
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zze:Lcom/google/android/gms/measurement/internal/k3;

    .line 32
    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzp:I

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzq:I

    if-eq p1, v0, :cond_0

    .line 33
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzp:I

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzq:I

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all upload components initialized"

    .line 37
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzl:Z

    return-void
.end method

.method private final zza(ILjava/nio/channels/FileChannel;)Z
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 934
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzx()V

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 935
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 936
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 937
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 938
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v2, 0x0

    .line 939
    :try_start_0
    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 940
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object p1

    .line 941
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzat;->zzbr:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {p1, v4}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-gt p1, v4, :cond_1

    .line 942
    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 943
    :cond_1
    invoke-virtual {p2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x1

    .line 944
    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 945
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 946
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    .line 947
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return p1

    :catch_0
    move-exception p1

    .line 948
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p2

    .line 949
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p2

    const-string v1, "Failed to write to channel"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 950
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p1

    .line 951
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    const-string p2, "Bad channel to read from"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    return v0
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Z
    .locals 4

    .line 736
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 737
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 738
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    .line 739
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v1, "_sc"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 740
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd()Ljava/lang/String;

    move-result-object v0

    .line 741
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v3, "_pc"

    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 742
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    .line 743
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 744
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzki;->zzb(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private final zza(Ljava/lang/String;J)Z
    .locals 42
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "_npa"

    const-string v3, "_ai"

    const-string v4, ""

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/c;->zze()V

    .line 236
    :try_start_0
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzki$a;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Lcom/google/android/gms/measurement/internal/zzki$a;-><init>(Lcom/google/android/gms/measurement/internal/zzki;Lcom/google/android/gms/measurement/internal/q7;)V

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v7

    iget-wide v8, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzy:J

    .line 238
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/k4;->zzc()V

    .line 240
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/o7;->zzaj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const-wide/16 v11, -0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    .line 241
    :try_start_1
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/c;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 242
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v16, :cond_3

    cmp-long v16, v8, v11

    if-eqz v16, :cond_0

    :try_start_2
    new-array v6, v13, [Ljava/lang/String;

    .line 243
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v14

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v15

    goto :goto_0

    :cond_0
    new-array v6, v15, [Ljava/lang/String;

    .line 244
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v14

    :goto_0
    if-eqz v16, :cond_1

    const-string v16, "rowid <= ? and "

    move-object/from16 p2, v16

    goto :goto_1

    :cond_1
    move-object/from16 p2, v4

    .line 245
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit16 v13, v13, 0x94

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "select app_id, metadata_fingerprint from raw_events where "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 246
    invoke-virtual {v10, v11, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 247
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-nez v11, :cond_2

    .line 248
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    goto :goto_6

    .line 249
    :cond_2
    :try_start_5
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 250
    :try_start_6
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 251
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_7

    :catch_0
    move-exception v0

    move-object/from16 v25, v4

    goto :goto_2

    :cond_3
    cmp-long v6, v8, v11

    if-eqz v6, :cond_4

    const/4 v11, 0x2

    :try_start_7
    new-array v12, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v11, v12, v14

    .line 252
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v12, v15
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v25, v4

    const/4 v6, 0x0

    :goto_2
    const/4 v11, 0x0

    :goto_3
    move-object v4, v0

    goto/16 :goto_c

    :cond_4
    const/4 v11, 0x0

    .line 253
    :try_start_8
    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v12
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_4
    if-eqz v6, :cond_5

    :try_start_9
    const-string v6, " and rowid <= ?"
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_5

    :cond_5
    move-object v6, v4

    .line 254
    :goto_5
    :try_start_a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x54

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " order by rowid limit 1;"

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 255
    invoke-virtual {v10, v6, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 256
    :try_start_b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-nez v11, :cond_6

    .line 257
    :try_start_c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :goto_6
    move-object/from16 v25, v4

    goto/16 :goto_d

    .line 258
    :cond_6
    :try_start_d
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 259
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    const/4 v11, 0x0

    :goto_7
    :try_start_e
    const-string v17, "raw_events_metadata"

    const-string v13, "metadata"

    .line 260
    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v18

    const-string v19, "app_id = ? and metadata_fingerprint = ?"

    const/4 v13, 0x2

    new-array v15, v13, [Ljava/lang/String;

    aput-object v11, v15, v14

    const/4 v13, 0x1

    aput-object v12, v15, v13

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v23, "rowid"

    const-string v24, "2"

    move-object/from16 v16, v10

    move-object/from16 v20, v15

    .line 261
    invoke-virtual/range {v16 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 262
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-nez v13, :cond_7

    .line 263
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/k4;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v8

    .line 264
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v8

    const-string v9, "Raw event metadata record is missing. appId"

    .line 265
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 266
    :try_start_f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_6

    .line 267
    :cond_7
    :try_start_10
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 268
    :try_start_11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzbh()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v15

    invoke-static {v15, v13}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzjk;[B)Lcom/google/android/gms/internal/measurement/zzjk;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzcd$zzg;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 269
    :try_start_12
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 270
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/k4;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v15

    .line 271
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v15

    const-string v14, "Get multiple raw event metadata records, expected one. appId"
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move-object/from16 v25, v4

    .line 272
    :try_start_13
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 273
    invoke-virtual {v15, v14, v4}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :cond_8
    move-object/from16 v25, v4

    .line 274
    :goto_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 275
    invoke-interface {v5, v13}, Lcom/google/android/gms/measurement/internal/d;->b(Lcom/google/android/gms/internal/measurement/zzcd$zzg;)V

    const-wide/16 v13, -0x1

    cmp-long v4, v8, v13

    if-eqz v4, :cond_9

    const-string v4, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v11, v14, v13

    const/4 v13, 0x1

    aput-object v12, v14, v13

    .line 276
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v14, v9

    move-object/from16 v19, v4

    move-object/from16 v20, v14

    goto :goto_9

    :cond_9
    const-string v4, "app_id = ? and metadata_fingerprint = ?"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v11, v9, v8

    const/4 v8, 0x1

    aput-object v12, v9, v8

    move-object/from16 v19, v4

    move-object/from16 v20, v9

    :goto_9
    const-string v17, "raw_events"

    const-string v4, "rowid"

    const-string v8, "name"

    const-string v9, "timestamp"

    const-string v12, "data"

    .line 277
    filled-new-array {v4, v8, v9, v12}, [Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v23, "rowid"

    const/16 v24, 0x0

    move-object/from16 v16, v10

    .line 278
    invoke-virtual/range {v16 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 279
    :try_start_14
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_a

    .line 280
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/k4;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v6

    .line 281
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v6

    const-string v8, "Raw event data disappeared while in transaction. appId"

    .line 282
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 283
    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 284
    :try_start_15
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    goto/16 :goto_d

    :cond_a
    const/4 v6, 0x0

    .line 285
    :try_start_16
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v6, 0x3

    .line 286
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 287
    :try_start_17
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzj()Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    move-result-object v6

    invoke-static {v6, v10}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzjk;[B)Lcom/google/android/gms/internal/measurement/zzjk;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    const/4 v10, 0x1

    .line 288
    :try_start_18
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    move-result-object v10

    const/4 v12, 0x2

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    .line 289
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-interface {v5, v8, v9, v6}, Lcom/google/android/gms/measurement/internal/d;->a(JLcom/google/android/gms/internal/measurement/zzcd$zzc;)Z

    move-result v6
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    if-nez v6, :cond_b

    .line 290
    :try_start_19
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    goto/16 :goto_d

    :catch_2
    move-exception v0

    move-object v6, v0

    .line 291
    :try_start_1a
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/k4;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v8

    .line 292
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v8

    const-string v9, "Data loss. Failed to merge raw event. appId"

    .line 293
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v6}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 294
    :cond_b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_3
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    if-nez v6, :cond_a

    .line 295
    :try_start_1b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    goto :goto_d

    :catchall_0
    move-exception v0

    move-object v5, v1

    move-object v6, v4

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v6, v4

    goto/16 :goto_3

    :catch_4
    move-exception v0

    move-object/from16 v25, v4

    move-object v4, v0

    .line 296
    :try_start_1c
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/k4;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v8

    .line 297
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v8

    const-string v9, "Data loss. Failed to merge raw event metadata. appId"

    .line 298
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 299
    invoke-virtual {v8, v9, v10, v4}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1c} :catch_5
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    .line 300
    :try_start_1d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    goto :goto_d

    :catch_5
    move-exception v0

    goto/16 :goto_3

    :catch_6
    move-exception v0

    move-object/from16 v25, v4

    goto/16 :goto_3

    :catch_7
    move-exception v0

    move-object/from16 v25, v4

    move-object v4, v0

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v5, v1

    const/4 v6, 0x0

    :goto_a
    move-object v1, v0

    goto/16 :goto_4d

    :catch_8
    move-exception v0

    move-object/from16 v25, v4

    move-object v4, v0

    const/4 v6, 0x0

    :goto_b
    const/4 v11, 0x0

    .line 301
    :goto_c
    :try_start_1e
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/k4;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v7

    .line 302
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v7

    const-string v8, "Data loss. Error selecting raw event. appId"

    .line 303
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v4}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    if-eqz v6, :cond_c

    .line 304
    :try_start_1f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 305
    :cond_c
    :goto_d
    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->c:Ljava/util/List;

    if-eqz v4, :cond_e

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_e

    :cond_d
    const/4 v4, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v4, 0x1

    :goto_f
    if-nez v4, :cond_7f

    .line 306
    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 307
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhz;->zzbn()Lcom/google/android/gms/internal/measurement/zzhz$zza;

    move-result-object v4

    .line 308
    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v4

    .line 309
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v6

    .line 310
    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzat;->zzat:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v6

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    .line 311
    :goto_10
    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->c:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    move/from16 v18, v13

    const-string v13, "_fr"

    move-object/from16 v19, v2

    const-string v2, "_et"

    move/from16 v20, v14

    const-string v14, "_e"

    move/from16 v21, v6

    move/from16 v22, v7

    if-ge v12, v9, :cond_44

    .line 312
    :try_start_20
    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->c:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    .line 313
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhz;->zzbn()Lcom/google/android/gms/internal/measurement/zzhz$zza;

    move-result-object v9

    .line 314
    check-cast v9, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzc()Lcom/google/android/gms/measurement/internal/zzfp;

    move-result-object v6

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 316
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v7

    move/from16 v26, v12

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v7, v12}, Lcom/google/android/gms/measurement/internal/zzfp;->zzb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    const-string v7, "_err"

    if-eqz v6, :cond_12

    .line 317
    :try_start_21
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v2

    .line 318
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    const-string v6, "Dropping blacklisted raw event. appId"

    iget-object v12, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 319
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 320
    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfv;->zzi()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v13

    .line 321
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzep;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 322
    invoke-virtual {v2, v6, v12, v13}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzc()Lcom/google/android/gms/measurement/internal/zzfp;

    move-result-object v2

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzfp;->zzg(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzc()Lcom/google/android/gms/measurement/internal/zzfp;

    move-result-object v2

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 325
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzfp;->zzh(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_11

    :cond_f
    const/4 v2, 0x0

    goto :goto_12

    :cond_10
    :goto_11
    const/4 v2, 0x1

    :goto_12
    if-nez v2, :cond_11

    .line 326
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 327
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v27

    .line 328
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzaa:Lcom/google/android/gms/measurement/internal/w7;

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 329
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0xb

    const-string v31, "_ev"

    .line 330
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    move-object/from16 v28, v2

    .line 331
    invoke-virtual/range {v27 .. v33}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Lcom/google/android/gms/measurement/internal/w7;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_11
    move-wide/from16 v27, v15

    move/from16 v13, v18

    move/from16 v14, v20

    move/from16 v6, v26

    const/4 v7, 0x3

    move-object/from16 v16, v3

    goto/16 :goto_2d

    .line 332
    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlq;->zzb()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 333
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v6

    .line 334
    iget-object v12, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v12

    move-wide/from16 v27, v15

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzat;->zzcl:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v6, v12, v15}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 335
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v6

    .line 336
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 337
    invoke-virtual {v9, v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    .line 338
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v6

    .line 339
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v6

    const-string v12, "Renaming ad_impression to _ai"

    invoke-virtual {v6, v12}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    .line 340
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v6

    const/4 v12, 0x5

    .line 341
    invoke-virtual {v6, v12}, Lcom/google/android/gms/measurement/internal/zzer;->zza(I)Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v6, 0x0

    .line 342
    :goto_13
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzb()I

    move-result v12

    if-ge v6, v12, :cond_15

    const-string v12, "ad_platform"

    .line 343
    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 344
    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_13

    const-string v12, "admob"

    .line 345
    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 346
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v12

    .line 347
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzer;->zzj()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v12

    const-string v15, "AdMob ad impression logged from app. Potentially duplicative."

    .line 348
    invoke-virtual {v12, v15}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_14
    move-wide/from16 v27, v15

    .line 349
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzc()Lcom/google/android/gms/measurement/internal/zzfp;

    move-result-object v6

    iget-object v12, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 350
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v12, v15}, Lcom/google/android/gms/measurement/internal/zzfp;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    const-string v12, "_c"

    if-nez v6, :cond_1d

    .line 351
    :try_start_22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v15

    .line 352
    invoke-static {v15}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v16, v3

    .line 353
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v3

    move-object/from16 v29, v10

    const v10, 0x171c4

    if-eq v3, v10, :cond_18

    const v10, 0x17331

    if-eq v3, v10, :cond_17

    const v10, 0x17333

    if-eq v3, v10, :cond_16

    goto :goto_14

    :cond_16
    const-string v3, "_ui"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    goto :goto_15

    :cond_17
    const-string v3, "_ug"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x2

    goto :goto_15

    :cond_18
    const-string v3, "_in"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x0

    goto :goto_15

    :cond_19
    :goto_14
    const/4 v3, -0x1

    :goto_15
    if-eqz v3, :cond_1a

    const/4 v10, 0x1

    if-eq v3, v10, :cond_1a

    const/4 v10, 0x2

    if-eq v3, v10, :cond_1a

    const/4 v3, 0x0

    goto :goto_16

    :cond_1a
    const/4 v3, 0x1

    :goto_16
    if-eqz v3, :cond_1b

    goto :goto_18

    :cond_1b
    move-object/from16 v30, v2

    move-object/from16 v31, v4

    move-object/from16 v32, v11

    move-object v10, v13

    move-object v11, v14

    :cond_1c
    :goto_17
    move/from16 v13, v18

    goto/16 :goto_1f

    :cond_1d
    move-object/from16 v16, v3

    move-object/from16 v29, v10

    :goto_18
    move-object/from16 v30, v2

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    .line 354
    :goto_19
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzb()I

    move-result v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    move-object/from16 v31, v4

    const-string v4, "_r"

    if-ge v15, v2, :cond_20

    .line 355
    :try_start_23
    invoke-virtual {v9, v15}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 356
    invoke-virtual {v9, v15}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v2

    .line 357
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhz;->zzbn()Lcom/google/android/gms/internal/measurement/zzhz$zza;

    move-result-object v2

    .line 358
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    const-wide/16 v3, 0x1

    .line 359
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v2

    .line 360
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    .line 361
    invoke-virtual {v9, v15, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zze;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    move-object/from16 v32, v11

    const/4 v3, 0x1

    goto :goto_1a

    .line 362
    :cond_1e
    invoke-virtual {v9, v15}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 363
    invoke-virtual {v9, v15}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v2

    .line 364
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhz;->zzbn()Lcom/google/android/gms/internal/measurement/zzhz$zza;

    move-result-object v2

    .line 365
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-object/from16 v32, v11

    const-wide/16 v10, 0x1

    .line 366
    invoke-virtual {v2, v10, v11}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v2

    .line 367
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    .line 368
    invoke-virtual {v9, v15, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zze;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    const/4 v10, 0x1

    goto :goto_1a

    :cond_1f
    move-object/from16 v32, v11

    :goto_1a
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v31

    move-object/from16 v11, v32

    goto :goto_19

    :cond_20
    move-object/from16 v32, v11

    if-nez v3, :cond_21

    if-eqz v6, :cond_21

    .line 369
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v2

    .line 370
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    const-string v3, "Marking event as conversion"

    .line 371
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfv;->zzi()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v11

    .line 372
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/google/android/gms/measurement/internal/zzep;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 373
    invoke-virtual {v2, v3, v11}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 374
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzm()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v2

    .line 375
    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v2

    move-object v3, v13

    move-object v11, v14

    const-wide/16 v13, 0x1

    .line 376
    invoke-virtual {v2, v13, v14}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v2

    .line 377
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    goto :goto_1b

    :cond_21
    move-object v3, v13

    move-object v11, v14

    :goto_1b
    if-nez v10, :cond_22

    .line 378
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v2

    .line 379
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    const-string v10, "Marking event as real-time"

    .line 380
    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfv;->zzi()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v13

    .line 381
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzep;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 382
    invoke-virtual {v2, v10, v13}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 383
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzm()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v2

    .line 384
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v2

    const-wide/16 v13, 0x1

    .line 385
    invoke-virtual {v2, v13, v14}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v2

    .line 386
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    .line 387
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v33

    .line 388
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzy()J

    move-result-wide v34

    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 389
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x1

    .line 390
    invoke-virtual/range {v33 .. v41}, Lcom/google/android/gms/measurement/internal/c;->i(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    .line 391
    iget-wide v13, v2, Lcom/google/android/gms/measurement/internal/zzaf;->zze:J

    .line 392
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v2

    .line 393
    iget-object v10, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/google/android/gms/measurement/internal/zzy;->zzc(Ljava/lang/String;)I

    move-result v2

    move-object v10, v3

    int-to-long v2, v2

    cmp-long v15, v13, v2

    if-lez v15, :cond_23

    .line 394
    invoke-static {v9, v4}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;)V

    goto :goto_1c

    :cond_23
    const/16 v18, 0x1

    .line 395
    :goto_1c
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    if-eqz v6, :cond_1c

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v33

    .line 397
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzy()J

    move-result-wide v34

    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 398
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x1

    const/16 v40, 0x0

    const/16 v41, 0x0

    .line 399
    invoke-virtual/range {v33 .. v41}, Lcom/google/android/gms/measurement/internal/c;->i(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    .line 400
    iget-wide v2, v2, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:J

    .line 401
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v4

    .line 402
    iget-object v13, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v13

    .line 403
    sget-object v14, Lcom/google/android/gms/measurement/internal/zzat;->zzm:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v4, v13, v14}, Lcom/google/android/gms/measurement/internal/zzy;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)I

    move-result v4

    int-to-long v13, v4

    cmp-long v4, v2, v13

    if-lez v4, :cond_1c

    .line 404
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v2

    .line 405
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    const-string v3, "Too many conversions. Not logging as conversion. appId"

    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 406
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 407
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v13, 0x0

    .line 408
    :goto_1d
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzb()I

    move-result v14

    if-ge v13, v14, :cond_26

    .line 409
    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v14

    .line 410
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_24

    .line 411
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzhz;->zzbn()Lcom/google/android/gms/internal/measurement/zzhz$zza;

    move-result-object v2

    .line 412
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-object v3, v2

    move v2, v13

    goto :goto_1e

    .line 413
    :cond_24
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_25

    const/4 v4, 0x1

    :cond_25
    :goto_1e
    add-int/lit8 v13, v13, 0x1

    goto :goto_1d

    :cond_26
    if-eqz v4, :cond_27

    if-eqz v3, :cond_27

    .line 414
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    goto/16 :goto_17

    :cond_27
    if-eqz v3, :cond_28

    .line 415
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgg;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhz$zza;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    .line 416
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v3

    const-wide/16 v13, 0xa

    .line 417
    invoke-virtual {v3, v13, v14}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;

    move-result-object v3

    .line 418
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    .line 419
    invoke-virtual {v9, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zze;)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    goto/16 :goto_17

    .line 420
    :cond_28
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v2

    .line 421
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    const-string v3, "Did not find conversion parameter. appId"

    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 422
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 423
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_17

    :goto_1f
    if-eqz v6, :cond_31

    .line 424
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zza()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v6, -0x1

    .line 425
    :goto_20
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_5

    const-string v14, "currency"

    const-string v15, "value"

    if-ge v3, v7, :cond_2b

    .line 426
    :try_start_24
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    move v4, v3

    goto :goto_21

    .line 427
    :cond_29
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    move v6, v3

    :cond_2a
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_2b
    const/4 v3, -0x1

    if-eq v4, v3, :cond_32

    .line 428
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zze()Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzi()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 429
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v2

    .line 430
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzer;->zzj()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    const-string v3, "Value must be specified with a numeric type."

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    .line 432
    invoke-static {v9, v12}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;)V

    const/16 v2, 0x12

    .line 433
    invoke-static {v9, v2, v15}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;ILjava/lang/String;)V

    goto :goto_25

    :cond_2c
    const/4 v3, -0x1

    if-ne v6, v3, :cond_2d

    const/4 v2, 0x1

    const/4 v7, 0x3

    goto :goto_24

    .line 434
    :cond_2d
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd()Ljava/lang/String;

    move-result-object v2

    .line 435
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2e

    :goto_22
    const/4 v2, 0x1

    goto :goto_24

    :cond_2e
    const/4 v6, 0x0

    .line 436
    :goto_23
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v6, v15, :cond_30

    .line 437
    invoke-virtual {v2, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v15

    .line 438
    invoke-static {v15}, Ljava/lang/Character;->isLetter(I)Z

    move-result v17

    if-nez v17, :cond_2f

    goto :goto_22

    .line 439
    :cond_2f
    invoke-static {v15}, Ljava/lang/Character;->charCount(I)I

    move-result v15

    add-int/2addr v6, v15

    goto :goto_23

    :cond_30
    const/4 v2, 0x0

    :goto_24
    if-eqz v2, :cond_33

    .line 440
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v2

    .line 441
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzer;->zzj()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    const-string v6, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    .line 442
    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    .line 444
    invoke-static {v9, v12}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;)V

    const/16 v2, 0x13

    .line 445
    invoke-static {v9, v2, v14}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;ILjava/lang/String;)V

    goto :goto_26

    :cond_31
    :goto_25
    const/4 v3, -0x1

    :cond_32
    const/4 v7, 0x3

    .line 446
    :cond_33
    :goto_26
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v2

    .line 447
    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzat;->zzas:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v2, v4, v6}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 448
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-static {v2, v10}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v2

    if-nez v2, :cond_35

    if-eqz v32, :cond_34

    .line 450
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v14

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v17

    sub-long v14, v14, v17

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/16 v17, 0x3e8

    cmp-long v2, v14, v17

    if-gtz v2, :cond_34

    .line 451
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/gms/internal/measurement/zzgg;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhz$zza;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    .line 452
    invoke-direct {v1, v9, v2}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Z

    move-result v4

    if-eqz v4, :cond_34

    move-object/from16 v4, v31

    .line 453
    invoke-virtual {v4, v8, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move/from16 v10, v22

    move-object/from16 v6, v30

    :goto_27
    const/16 v29, 0x0

    const/16 v32, 0x0

    goto/16 :goto_2b

    :cond_34
    move-object/from16 v4, v31

    move-object/from16 v29, v9

    move/from16 v10, v20

    :goto_28
    move-object/from16 v6, v30

    goto/16 :goto_2b

    :cond_35
    move-object/from16 v4, v31

    move/from16 v10, v22

    goto :goto_28

    :cond_36
    move-object/from16 v4, v31

    const-string v2, "_vs"

    .line 454
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    move-object/from16 v6, v30

    invoke-static {v2, v6}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v2

    if-nez v2, :cond_38

    if-eqz v29, :cond_37

    .line 456
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v14

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v17

    sub-long v14, v14, v17

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/16 v17, 0x3e8

    cmp-long v2, v14, v17

    if-gtz v2, :cond_37

    .line 457
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/internal/measurement/zzgg;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhz$zza;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    .line 458
    invoke-direct {v1, v2, v9}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Z

    move-result v10

    if-eqz v10, :cond_37

    move/from16 v10, v22

    .line 459
    invoke-virtual {v4, v10, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto :goto_27

    :cond_37
    move/from16 v10, v22

    move-object/from16 v32, v9

    move/from16 v8, v20

    goto/16 :goto_2b

    :cond_38
    move/from16 v10, v22

    goto/16 :goto_2b

    :cond_39
    move/from16 v10, v22

    move-object/from16 v6, v30

    .line 460
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v2

    .line 461
    iget-object v12, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 462
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v12

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzat;->zzbl:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v2, v12, v14}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v2

    if-eqz v2, :cond_40

    const-string v2, "_ab"

    .line 463
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-static {v2, v6}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v2

    if-nez v2, :cond_40

    if-eqz v29, :cond_40

    .line 465
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v14

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v17

    sub-long v14, v14, v17

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/16 v17, 0xfa0

    cmp-long v2, v14, v17

    if-gtz v2, :cond_40

    .line 466
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/internal/measurement/zzgg;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhz$zza;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    .line 467
    invoke-direct {v1, v2, v9}, Lcom/google/android/gms/measurement/internal/zzki;->zzb(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)V

    .line 468
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 469
    invoke-static {v12}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v14, "_sn"

    invoke-static {v12, v14}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v12

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    .line 472
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v15, "_sc"

    invoke-static {v14, v15}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v14

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v15, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v3, "_si"

    invoke-static {v15, v3}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v3

    if-eqz v12, :cond_3a

    .line 474
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd()Ljava/lang/String;

    move-result-object v12

    goto :goto_29

    :cond_3a
    move-object/from16 v12, v25

    .line 475
    :goto_29
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3b

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    const-string v15, "_sn"

    invoke-static {v9, v15, v12}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3b
    if-eqz v14, :cond_3c

    .line 477
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd()Ljava/lang/String;

    move-result-object v12

    goto :goto_2a

    :cond_3c
    move-object/from16 v12, v25

    .line 478
    :goto_2a
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3d

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    const-string v14, "_sc"

    invoke-static {v9, v14, v12}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3d
    if-eqz v3, :cond_3e

    .line 480
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    const-string v12, "_si"

    .line 481
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzf()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v9, v12, v3}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 482
    :cond_3e
    invoke-virtual {v4, v10, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    const/16 v29, 0x0

    goto :goto_2b

    :cond_3f
    move/from16 v10, v22

    move-object/from16 v6, v30

    move-object/from16 v4, v31

    :cond_40
    :goto_2b
    if-nez v21, :cond_43

    .line 483
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 484
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzb()I

    move-result v2

    if-nez v2, :cond_41

    .line 485
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v2

    .line 486
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    const-string v3, "Engagement event does not contain any parameters. appId"

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 487
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 488
    invoke-virtual {v2, v3, v6}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2c

    .line 489
    :cond_41
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    .line 490
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-static {v2, v6}, Lcom/google/android/gms/measurement/internal/zzks;->zzb(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_42

    .line 491
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v2

    .line 492
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    const-string v3, "Engagement event does not include duration. appId"

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 493
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 494
    invoke-virtual {v2, v3, v6}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2c

    .line 495
    :cond_42
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v2, v27, v2

    move-wide/from16 v27, v2

    .line 496
    :cond_43
    :goto_2c
    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->c:Ljava/util/List;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    move/from16 v6, v26

    invoke-interface {v2, v6, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v20, 0x1

    .line 497
    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move/from16 v22, v10

    move-object/from16 v10, v29

    move-object/from16 v11, v32

    :goto_2d
    add-int/lit8 v12, v6, 0x1

    move-object/from16 v3, v16

    move-object/from16 v2, v19

    move/from16 v6, v21

    move/from16 v7, v22

    move-wide/from16 v15, v27

    goto/16 :goto_10

    :cond_44
    move-object v6, v2

    move-object v10, v13

    move-object v11, v14

    move-wide/from16 v27, v15

    if-eqz v21, :cond_49

    move/from16 v14, v20

    move-wide/from16 v15, v27

    const/4 v2, 0x0

    :goto_2e
    if-ge v2, v14, :cond_48

    .line 498
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    move-result-object v3

    .line 499
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    invoke-static {v3, v10}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v7

    if-eqz v7, :cond_45

    .line 501
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzc(I)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    add-int/lit8 v14, v14, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_30

    .line 502
    :cond_45
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    invoke-static {v3, v6}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v3

    if-eqz v3, :cond_47

    .line 503
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zze()Z

    move-result v7

    if-eqz v7, :cond_46

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzf()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_2f

    :cond_46
    const/4 v3, 0x0

    :goto_2f
    if-eqz v3, :cond_47

    .line 504
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v12, 0x0

    cmp-long v9, v7, v12

    if-lez v9, :cond_47

    .line 505
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v15, v7

    :cond_47
    :goto_30
    const/4 v3, 0x1

    add-int/2addr v2, v3

    goto :goto_2e

    :cond_48
    move-wide v2, v15

    goto :goto_31

    :cond_49
    move-wide/from16 v2, v27

    :goto_31
    const/4 v6, 0x0

    .line 506
    invoke-direct {v1, v4, v2, v3, v6}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;JZ)V

    .line 507
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v8, "_s"

    .line 508
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zzc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_5

    if-eqz v7, :cond_4a

    const/4 v6, 0x1

    goto :goto_32

    :cond_4b
    const/4 v6, 0x0

    :goto_32
    const-string v7, "_se"

    if-eqz v6, :cond_4c

    .line 509
    :try_start_25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v6

    .line 510
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v8

    .line 511
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/c;->Q(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    const-string v6, "_sid"

    .line 512
    invoke-static {v4, v6}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_4d

    const/4 v6, 0x1

    goto :goto_33

    :cond_4d
    const/4 v6, 0x0

    :goto_33
    if-eqz v6, :cond_4e

    const/4 v6, 0x1

    .line 513
    invoke-direct {v1, v4, v2, v3, v6}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;JZ)V

    goto :goto_34

    .line 514
    :cond_4e
    invoke-static {v4, v7}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_4f

    .line 515
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zze(I)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 516
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v2

    .line 517
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    const-string v3, "Session engagement user property is in the bundle without session ID. appId"

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 518
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 519
    invoke-virtual {v2, v3, v6}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 520
    :cond_4f
    :goto_34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    move-result-object v2

    .line 521
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/k4;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    const-string v6, "Checking account type status for ad personalization signals"

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/m7;->zzj()Lcom/google/android/gms/measurement/internal/zzfp;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzfp;->zze(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 523
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/m7;->zzi()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/c;->O(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v3

    if-eqz v3, :cond_52

    .line 524
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i3;->l()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 525
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/k4;->zzk()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzal;->zzi()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 526
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/k4;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzer;->zzv()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    const-string v6, "Turning off ad personalization due to account type"

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    .line 527
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzj()Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v3

    move-object/from16 v6, v19

    .line 528
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v3

    .line 529
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/k4;->zzk()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzg()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v2

    const-wide/16 v7, 0x1

    .line 530
    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v2

    .line 531
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcd$zzk;

    const/4 v3, 0x0

    .line 532
    :goto_35
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zze()I

    move-result v7

    if-ge v3, v7, :cond_51

    .line 533
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzd(I)Lcom/google/android/gms/internal/measurement/zzcd$zzk;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzc()Ljava/lang/String;

    move-result-object v7

    .line 534
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 535
    invoke-virtual {v4, v3, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zzk;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    const/4 v3, 0x1

    goto :goto_36

    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_51
    const/4 v3, 0x0

    :goto_36
    if-nez v3, :cond_52

    .line 536
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzk;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_52
    const-wide v2, 0x7fffffffffffffffL

    .line 537
    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v2

    const-wide/high16 v6, -0x8000000000000000L

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzc(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    const/4 v2, 0x0

    .line 538
    :goto_37
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb()I

    move-result v3

    if-ge v2, v3, :cond_55

    .line 539
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    move-result-object v3

    .line 540
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zze()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzf()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-gez v10, :cond_53

    .line 541
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zze()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 542
    :cond_53
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zze()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzg()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-lez v10, :cond_54

    .line 543
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zze()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzc(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 544
    :cond_55
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzox;->zzb()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 545
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v2

    .line 546
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzat;->zzcf:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v2, v3, v6}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 547
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzq()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 548
    :cond_56
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzp()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v2

    .line 549
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzf()Lcom/google/android/gms/measurement/internal/a8;

    move-result-object v6

    .line 550
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v7

    .line 551
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza()Ljava/util/List;

    move-result-object v8

    .line 552
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzd()Ljava/util/List;

    move-result-object v9

    .line 553
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzf()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 554
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzg()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 555
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/a8;->b(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v3

    .line 556
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 557
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v2

    .line 558
    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzy;->zzi(Ljava/lang/String;)Z

    move-result v2
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_5

    if-eqz v2, :cond_71

    .line 559
    :try_start_26
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 560
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 561
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v6

    .line 562
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzkw;->zzg()Ljava/security/SecureRandom;

    move-result-object v6

    const/4 v7, 0x0

    .line 563
    :goto_38
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb()I

    move-result v8

    if-ge v7, v8, :cond_6e

    .line 564
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    move-result-object v8

    .line 565
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhz;->zzbn()Lcom/google/android/gms/internal/measurement/zzhz$zza;

    move-result-object v8

    .line 566
    check-cast v8, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;

    .line 567
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v9

    const-string v10, "_ep"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_2

    const-string v10, "_sr"

    if-eqz v9, :cond_5b

    .line 568
    :try_start_27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v11, "_en"

    invoke-static {v9, v11}, Lcom/google/android/gms/measurement/internal/zzks;->zzb(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 569
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/h;

    if-nez v11, :cond_57

    .line 570
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v11

    iget-object v12, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v9}, Lcom/google/android/gms/measurement/internal/c;->j(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/h;

    move-result-object v11

    .line 571
    invoke-interface {v2, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    :cond_57
    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/h;->i:Ljava/lang/Long;

    if-nez v9, :cond_5a

    .line 573
    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/h;->j:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    cmp-long v9, v12, v14

    if-lez v9, :cond_58

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/h;->j:Ljava/lang/Long;

    .line 575
    invoke-static {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 576
    :cond_58
    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/h;->k:Ljava/lang/Boolean;

    if-eqz v9, :cond_59

    .line 577
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_59

    .line 578
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    const-string v9, "_efs"

    const-wide/16 v10, 0x1

    .line 579
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v8, v9, v12}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 580
    :cond_59
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    :cond_5a
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_5

    :goto_39
    move-object v9, v2

    move-object/from16 p1, v5

    move-object v15, v6

    const-wide/16 v5, 0x1

    goto/16 :goto_41

    .line 582
    :cond_5b
    :try_start_28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzc()Lcom/google/android/gms/measurement/internal/zzfp;

    move-result-object v9

    iget-object v11, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 583
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/google/android/gms/measurement/internal/zzfp;->zzf(Ljava/lang/String;)J

    move-result-wide v11

    .line 584
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    .line 585
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v13

    invoke-static {v13, v14, v11, v12}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(JJ)J

    move-result-wide v13

    .line 586
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v15, "_dbg"

    move-wide/from16 v19, v11

    const-wide/16 v16, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 587
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_2

    if-nez v12, :cond_60

    if-nez v11, :cond_5c

    goto :goto_3b

    .line 588
    :cond_5c
    :try_start_29
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzcd$zzc;->zza()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_60

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-object/from16 p1, v9

    .line 589
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5f

    .line 590
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzf()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5e

    instance-of v9, v11, Ljava/lang/String;

    if-eqz v9, :cond_5d

    .line 591
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5e

    :cond_5d
    instance-of v9, v11, Ljava/lang/Double;

    if-eqz v9, :cond_60

    .line 592
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzj()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_60

    :cond_5e
    const/4 v9, 0x1

    goto :goto_3c

    :cond_5f
    move-object/from16 v9, p1

    goto :goto_3a

    :cond_60
    :goto_3b
    const/4 v9, 0x0

    :goto_3c
    if-nez v9, :cond_61

    .line 593
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzc()Lcom/google/android/gms/measurement/internal/zzfp;

    move-result-object v9

    iget-object v11, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 594
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/measurement/internal/zzfp;->zzd(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    goto :goto_3d

    :cond_61
    const/4 v9, 0x1

    :goto_3d
    if-gtz v9, :cond_62

    .line 595
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v10

    .line 596
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v10

    const-string v11, "Sample rate must be positive. event, rate"

    .line 597
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v11, v12, v9}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 598
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_5

    goto/16 :goto_39

    .line 600
    :cond_62
    :try_start_2a
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/h;

    if-nez v11, :cond_63

    .line 601
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v11

    iget-object v12, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v12, v15}, Lcom/google/android/gms/measurement/internal/c;->j(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/h;

    move-result-object v11

    if-nez v11, :cond_63

    .line 602
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v11

    .line 603
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v11

    const-string v12, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v15, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 604
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v15

    .line 605
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v1

    .line 606
    invoke-virtual {v11, v12, v15, v1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 607
    new-instance v11, Lcom/google/android/gms/measurement/internal/h;

    iget-object v1, v5, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 608
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v26

    .line 609
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v27

    const-wide/16 v28, 0x1

    const-wide/16 v30, 0x1

    const-wide/16 v32, 0x1

    .line 610
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v34

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v25, v11

    invoke-direct/range {v25 .. v41}, Lcom/google/android/gms/measurement/internal/h;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 611
    :cond_63
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v12, "_eid"

    invoke-static {v1, v12}, Lcom/google/android/gms/measurement/internal/zzks;->zzb(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_64

    const/4 v12, 0x1

    goto :goto_3e

    :cond_64
    const/4 v12, 0x0

    .line 612
    :goto_3e
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v15, 0x1

    if-ne v9, v15, :cond_67

    .line 613
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_66

    iget-object v1, v11, Lcom/google/android/gms/measurement/internal/h;->i:Ljava/lang/Long;

    if-nez v1, :cond_65

    iget-object v1, v11, Lcom/google/android/gms/measurement/internal/h;->j:Ljava/lang/Long;

    if-nez v1, :cond_65

    iget-object v1, v11, Lcom/google/android/gms/measurement/internal/h;->k:Ljava/lang/Boolean;

    if-eqz v1, :cond_66

    :cond_65
    const/4 v1, 0x0

    .line 615
    invoke-virtual {v11, v1, v1, v1}, Lcom/google/android/gms/measurement/internal/h;->c(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/h;

    move-result-object v9

    .line 616
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    :cond_66
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto/16 :goto_39

    .line 618
    :cond_67
    invoke-virtual {v6, v9}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v15

    if-nez v15, :cond_69

    .line 619
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    move-object/from16 p1, v5

    move-object v15, v6

    int-to-long v5, v9

    .line 620
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v8, v10, v1}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 621
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 623
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v11, v5, v1, v5}, Lcom/google/android/gms/measurement/internal/h;->c(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/h;

    move-result-object v11

    .line 624
    :cond_68
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v1

    .line 625
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v5

    invoke-virtual {v11, v5, v6, v13, v14}, Lcom/google/android/gms/measurement/internal/h;->b(JJ)Lcom/google/android/gms/measurement/internal/h;

    move-result-object v5

    .line 626
    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v2

    const-wide/16 v5, 0x1

    goto/16 :goto_40

    :cond_69
    move-object/from16 p1, v5

    move-object v15, v6

    .line 627
    iget-object v5, v11, Lcom/google/android/gms/measurement/internal/h;->h:Ljava/lang/Long;

    if-eqz v5, :cond_6a

    .line 628
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v17, v1

    move-object/from16 v16, v2

    goto :goto_3f

    :cond_6a
    move-object/from16 v5, p0

    .line 629
    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    .line 630
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzg()J

    move-result-wide v5

    move-object/from16 v17, v1

    move-object/from16 v16, v2

    move-wide/from16 v1, v19

    invoke-static {v5, v6, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(JJ)J

    move-result-wide v5

    :goto_3f
    cmp-long v1, v5, v13

    if-eqz v1, :cond_6c

    .line 631
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    const-string v1, "_efs"

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v8, v1, v2}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 632
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    int-to-long v1, v9

    .line 633
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 634
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_6b

    .line 636
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v9, 0x0

    invoke-virtual {v11, v9, v1, v2}, Lcom/google/android/gms/measurement/internal/h;->c(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/h;

    move-result-object v11

    .line 637
    :cond_6b
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v1

    .line 638
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzf()J

    move-result-wide v9

    invoke-virtual {v11, v9, v10, v13, v14}, Lcom/google/android/gms/measurement/internal/h;->b(JJ)Lcom/google/android/gms/measurement/internal/h;

    move-result-object v2

    move-object/from16 v9, v16

    .line 639
    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    :cond_6c
    move-object/from16 v9, v16

    const-wide/16 v5, 0x1

    .line 640
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 641
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v17

    const/4 v10, 0x0

    invoke-virtual {v11, v2, v10, v10}, Lcom/google/android/gms/measurement/internal/h;->c(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/h;

    move-result-object v2

    .line 642
    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    :cond_6d
    :goto_40
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :goto_41
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object v2, v9

    move-object v6, v15

    goto/16 :goto_38

    :cond_6e
    move-object v9, v2

    move-object/from16 p1, v5

    .line 644
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb()I

    move-result v2

    if-ge v1, v2, :cond_6f

    .line 645
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 646
    :cond_6f
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 647
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/h;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/c;->t(Lcom/google/android/gms/measurement/internal/h;)V

    goto :goto_42

    :cond_70
    move-object/from16 v1, p1

    goto :goto_43

    :cond_71
    move-object v1, v5

    .line 648
    :goto_43
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v2

    .line 649
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/c;->O(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v3
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2

    if-nez v3, :cond_72

    move-object/from16 v5, p0

    .line 650
    :try_start_2b
    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v3

    .line 651
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    const-string v6, "Bundling raw events w/o app info. appId"

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 652
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 653
    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_48

    :cond_72
    move-object/from16 v5, p0

    .line 654
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb()I

    move-result v6

    if-lez v6, :cond_77

    .line 655
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i3;->R()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_73

    .line 656
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zze(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto :goto_44

    .line 657
    :cond_73
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzi()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 658
    :goto_44
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i3;->P()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-nez v12, :cond_74

    goto :goto_45

    :cond_74
    move-wide v6, v8

    :goto_45
    cmp-long v8, v6, v10

    if-eqz v8, :cond_75

    .line 659
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzd(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto :goto_46

    .line 660
    :cond_75
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzh()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 661
    :goto_46
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i3;->i0()V

    .line 662
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i3;->f0()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzg(I)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 663
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzf()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/measurement/internal/i3;->a(J)V

    .line 664
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzg()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/measurement/internal/i3;->q(J)V

    .line 665
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i3;->j()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_76

    .line 666
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto :goto_47

    .line 667
    :cond_76
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzn()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 668
    :goto_47
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/android/gms/measurement/internal/c;->u(Lcom/google/android/gms/measurement/internal/i3;)V

    .line 669
    :cond_77
    :goto_48
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb()I

    move-result v3

    if-lez v3, :cond_7b

    .line 670
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzc()Lcom/google/android/gms/measurement/internal/zzfp;

    move-result-object v3

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzfp;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzca$zzb;

    move-result-object v3

    if-eqz v3, :cond_79

    .line 671
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zza()Z

    move-result v6

    if-nez v6, :cond_78

    goto :goto_49

    .line 672
    :cond_78
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzca$zzb;->zzb()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzi(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto :goto_4a

    .line 673
    :cond_79
    :goto_49
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzam()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7a

    const-wide/16 v6, -0x1

    .line 674
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzi(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto :goto_4a

    .line 675
    :cond_7a
    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v3

    .line 676
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    const-string v6, "Did not find measurement config or missing version info. appId"

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzki$a;->a:Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 677
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 678
    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 679
    :goto_4a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    move/from16 v13, v18

    invoke-virtual {v3, v4, v13}, Lcom/google/android/gms/measurement/internal/c;->x(Lcom/google/android/gms/internal/measurement/zzcd$zzg;Z)Z

    .line 680
    :cond_7b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzki$a;->b:Ljava/util/List;

    .line 681
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/k4;->zzc()V

    .line 683
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/o7;->zzaj()V

    .line 684
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "rowid in ("

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 685
    :goto_4b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_7d

    if-eqz v6, :cond_7c

    const-string v7, ","

    .line 686
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    :cond_7c
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4b

    :cond_7d
    const-string v6, ")"

    .line 688
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/c;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "raw_events"

    .line 690
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 691
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-eq v4, v6, :cond_7e

    .line 692
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/k4;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v3

    .line 693
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    const-string v6, "Deleted fewer rows from raw events table than expected"

    .line 694
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 695
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 696
    invoke-virtual {v3, v6, v4, v1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 697
    :cond_7e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    .line 698
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_4

    :try_start_2c
    const-string v4, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    .line 699
    invoke-virtual {v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2c .. :try_end_2c} :catch_9
    .catchall {:try_start_2c .. :try_end_2c} :catchall_4

    goto :goto_4c

    :catch_9
    move-exception v0

    move-object v3, v0

    .line 700
    :try_start_2d
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/k4;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    .line 701
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    const-string v4, "Failed to remove unused event metadata. appId"

    .line 702
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 703
    :goto_4c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c;->a()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_4

    .line 704
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c;->c0()V

    const/4 v1, 0x1

    return v1

    :catchall_2
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_4e

    :cond_7f
    move-object v5, v1

    .line 705
    :try_start_2e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c;->a()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_4

    .line 706
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c;->c0()V

    const/4 v1, 0x0

    return v1

    :catchall_3
    move-exception v0

    move-object v5, v1

    goto/16 :goto_a

    :goto_4d
    if-eqz v6, :cond_80

    .line 707
    :try_start_2f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 708
    :cond_80
    throw v1
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_4e

    :catchall_5
    move-exception v0

    move-object v5, v1

    :goto_4e
    move-object v1, v0

    .line 709
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->c0()V

    .line 710
    throw v1
.end method

.method private final zzaa()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzx()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzn()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->j0()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final zzab()V
    .locals 21
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzx()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzn()V

    .line 3
    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzki;->zzn:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 4
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v5, 0x36ee80

    .line 6
    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzki;->zzn:J

    sub-long/2addr v1, v7

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sub-long/2addr v5, v1

    cmp-long v1, v5, v3

    if-lez v1, :cond_0

    .line 8
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 10
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload has been suspended. Will update scheduling later in approximately ms"

    .line 11
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzv()Lcom/google/android/gms/measurement/internal/k3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/k3;->c()V

    .line 13
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzw()Lcom/google/android/gms/measurement/internal/zzke;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzke;->zze()V

    return-void

    .line 14
    :cond_0
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzki;->zzn:J

    .line 15
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzaf()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzaa()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_5

    .line 16
    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 17
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 18
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzat;->zzz:Lcom/google/android/gms/measurement/internal/zzeg;

    const/4 v6, 0x0

    .line 19
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 20
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/c;->zzy()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/c;->d()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_6

    .line 22
    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v10

    .line 23
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzy;->zzu()Ljava/lang/String;

    move-result-object v10

    .line 24
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, ".none."

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 25
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzat;->zzu:Lcom/google/android/gms/measurement/internal/zzeg;

    .line 26
    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 27
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_2

    .line 28
    :cond_5
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzat;->zzt:Lcom/google/android/gms/measurement/internal/zzeg;

    .line 29
    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 30
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_2

    .line 31
    :cond_6
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzat;->zzs:Lcom/google/android/gms/measurement/internal/zzeg;

    .line 32
    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 33
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 34
    :goto_2
    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v12

    .line 35
    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/m3;->d:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfh;->zza()J

    move-result-wide v12

    .line 36
    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v14

    .line 37
    iget-object v14, v14, Lcom/google/android/gms/measurement/internal/m3;->e:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzfh;->zza()J

    move-result-wide v14

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v16

    move-wide/from16 v17, v10

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/c;->h0()J

    move-result-wide v9

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v11

    move-wide/from16 v19, v7

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/c;->i0()J

    move-result-wide v6

    .line 40
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-nez v8, :cond_8

    :cond_7
    move-wide v10, v3

    goto/16 :goto_4

    :cond_8
    sub-long/2addr v6, v1

    .line 41
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sub-long v6, v1, v6

    sub-long/2addr v12, v1

    .line 42
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sub-long v8, v1, v8

    sub-long/2addr v14, v1

    .line 43
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long/2addr v1, v10

    .line 44
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    add-long v10, v6, v19

    if-eqz v5, :cond_9

    cmp-long v5, v8, v3

    if-lez v5, :cond_9

    .line 45
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    add-long v10, v10, v17

    .line 46
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    move-result-object v5

    move-wide/from16 v12, v17

    invoke-virtual {v5, v8, v9, v12, v13}, Lcom/google/android/gms/measurement/internal/zzks;->zza(JJ)Z

    move-result v5

    if-nez v5, :cond_a

    add-long v10, v8, v12

    :cond_a
    cmp-long v5, v1, v3

    if-eqz v5, :cond_c

    cmp-long v5, v1, v6

    if-ltz v5, :cond_c

    const/4 v5, 0x0

    :goto_3
    const/16 v6, 0x14

    .line 47
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzat;->zzab:Lcom/google/android/gms/measurement/internal/zzeg;

    const/4 v8, 0x0

    .line 48
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 49
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v9, 0x0

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_7

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v5

    .line 50
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzat;->zzaa:Lcom/google/android/gms/measurement/internal/zzeg;

    .line 51
    invoke-virtual {v12, v8}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 52
    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    mul-long v12, v12, v6

    add-long/2addr v10, v12

    cmp-long v6, v10, v1

    if-lez v6, :cond_b

    goto :goto_4

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_c
    :goto_4
    cmp-long v1, v10, v3

    if-nez v1, :cond_d

    .line 53
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    .line 55
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzv()Lcom/google/android/gms/measurement/internal/k3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/k3;->c()V

    .line 56
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzw()Lcom/google/android/gms/measurement/internal/zzke;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzke;->zze()V

    return-void

    .line 57
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzd()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeu;->zze()Z

    move-result v1

    if-nez v1, :cond_e

    .line 58
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    .line 60
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzv()Lcom/google/android/gms/measurement/internal/k3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/k3;->b()V

    .line 61
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzw()Lcom/google/android/gms/measurement/internal/zzke;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzke;->zze()V

    return-void

    .line 62
    :cond_e
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    .line 63
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/m3;->f:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfh;->zza()J

    move-result-wide v1

    .line 64
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzat;->zzq:Lcom/google/android/gms/measurement/internal/zzeg;

    const/4 v6, 0x0

    .line 65
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 66
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    move-result-object v7

    invoke-virtual {v7, v1, v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzks;->zza(JJ)Z

    move-result v7

    if-nez v7, :cond_f

    add-long/2addr v1, v5

    .line 68
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 69
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzv()Lcom/google/android/gms/measurement/internal/k3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/k3;->c()V

    .line 70
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 71
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v10, v1

    cmp-long v1, v10, v3

    if-gtz v1, :cond_10

    .line 72
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzat;->zzv:Lcom/google/android/gms/measurement/internal/zzeg;

    const/4 v2, 0x0

    .line 73
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 74
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 75
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    .line 76
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/m3;->d:Lcom/google/android/gms/measurement/internal/zzfh;

    .line 77
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 78
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfh;->zza(J)V

    .line 79
    :cond_10
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload scheduled in approximately ms"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzw()Lcom/google/android/gms/measurement/internal/zzke;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/measurement/internal/zzke;->zza(J)V

    return-void

    .line 82
    :cond_11
    :goto_5
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    .line 84
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzv()Lcom/google/android/gms/measurement/internal/k3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/k3;->c()V

    .line 85
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzw()Lcom/google/android/gms/measurement/internal/zzke;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzke;->zze()V

    return-void
.end method

.method private final zzac()V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzx()V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzr:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzs:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzt:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzo:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 7
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 9
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzr:Z

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzs:Z

    .line 12
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzt:Z

    .line 13
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Not stopping services. fetch, network, upload"

    .line 14
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzad()Z
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzx()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzat;->zzbh:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Storage concurrent access okay"

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzu:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzm()Landroid/content/Context;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 9
    new-instance v3, Ljava/io/File;

    const-string v4, "google_app_measurement.db"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzv:Ljava/nio/channels/FileChannel;

    .line 11
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzu:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    return v1

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    const-string v2, "Storage lock already acquired"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzn;
    .locals 33
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/c;->O(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 253
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->T()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    .line 254
    :cond_0
    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/zzki;->zzb(Lcom/google/android/gms/measurement/internal/i3;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 255
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 256
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    .line 257
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 258
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "App version does not match; dropping. appId"

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    .line 259
    :cond_1
    new-instance v31, Lcom/google/android/gms/measurement/internal/zzn;

    .line 260
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->A()Ljava/lang/String;

    move-result-object v4

    .line 261
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->T()Ljava/lang/String;

    move-result-object v5

    .line 262
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->V()J

    move-result-wide v6

    .line 263
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->X()Ljava/lang/String;

    move-result-object v8

    .line 264
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->Z()J

    move-result-wide v9

    .line 265
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->b0()J

    move-result-wide v11

    const/4 v13, 0x0

    .line 266
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->e0()Z

    move-result v14

    .line 267
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->M()Ljava/lang/String;

    move-result-object v16

    .line 268
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->k()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    .line 269
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->l()Z

    move-result v22

    .line 270
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->m()Z

    move-result v23

    const/16 v24, 0x0

    .line 271
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->D()Ljava/lang/String;

    move-result-object v25

    .line 272
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->n()Ljava/lang/Boolean;

    move-result-object v26

    .line 273
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->d0()J

    move-result-wide v27

    .line 274
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->o()Ljava/util/List;

    move-result-object v29

    .line 275
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznt;->zzb()Z

    move-result v30

    if-eqz v30, :cond_2

    .line 276
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v3

    .line 277
    sget-object v15, Lcom/google/android/gms/measurement/internal/zzat;->zzbi:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v3, v2, v15}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 278
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->G()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v30, v1

    goto :goto_0

    :cond_2
    const/16 v30, 0x0

    .line 279
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 280
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v1

    .line 281
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzat;->zzci:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 282
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzad;->zza()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v1, ""

    :goto_1
    move-object/from16 v32, v1

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v5

    move-wide v5, v6

    move-object v7, v8

    move-wide v8, v9

    move-wide v10, v11

    move-object v12, v13

    move v13, v14

    const/4 v14, 0x0

    move-object/from16 v15, v16

    move-wide/from16 v16, v17

    move-wide/from16 v18, v19

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-wide/from16 v26, v27

    move-object/from16 v28, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v32

    .line 283
    invoke-direct/range {v1 .. v30}, Lcom/google/android/gms/measurement/internal/zzn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v31

    .line 284
    :cond_4
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    .line 285
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzer;->zzv()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    const-string v3, "No app data available; dropping"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method private final zzb(Lcom/google/android/gms/measurement/internal/i3;)Ljava/lang/Boolean;
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 39
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->V()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzm()Landroid/content/Context;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->V()J

    move-result-wide v1

    int-to-long v3, v0

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    .line 43
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzm()Landroid/content/Context;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->T()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->T()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 47
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 48
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzb(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;)V
    .locals 9

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    const-string v1, "_et"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zze()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzf()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzf()J

    move-result-wide v2

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zzc;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzf()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-lez v8, :cond_1

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzf()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "_fr"

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static zzb(Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o7;->zzai()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zzb(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzny;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzat;->zzbz:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Lcom/google/android/gms/measurement/internal/zzar;)Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    .line 10
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzev;->zzb:Landroid/os/Bundle;

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/c;->f0(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v1

    .line 15
    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Ljava/lang/String;)I

    move-result v1

    .line 16
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Lcom/google/android/gms/measurement/internal/zzev;I)V

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzev;->zza()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    .line 19
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzat;->zzbd:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    const-string v1, "_cmp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzar;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    const-string v1, "_cis"

    .line 22
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "referrer API v2"

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzar;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    const-string v1, "gclid"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 25
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 26
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkr;

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzar;->zzd:J

    const-string v3, "_lgclid"

    const-string v7, "auto"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/measurement/internal/zzkr;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 28
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 26
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "_sno"

    .line 3
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzx()V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzn()V

    .line 8
    iget-object v15, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    .line 10
    :cond_0
    iget-boolean v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-nez v7, :cond_1

    .line 11
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzki;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/i3;

    return-void

    .line 12
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzc()Lcom/google/android/gms/measurement/internal/zzfp;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    invoke-virtual {v7, v15, v8}, Lcom/google/android/gms/measurement/internal/zzfp;->zzb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    const-string v14, "_err"

    const/4 v13, 0x0

    if-eqz v7, :cond_6

    .line 13
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v3

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    .line 15
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 16
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfv;->zzi()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v5

    .line 17
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzep;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Dropping blacklisted event. appId"

    .line 18
    invoke-virtual {v3, v6, v4, v5}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzc()Lcom/google/android/gms/measurement/internal/zzfp;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/google/android/gms/measurement/internal/zzfp;->zzg(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzc()Lcom/google/android/gms/measurement/internal/zzfp;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/google/android/gms/measurement/internal/zzfp;->zzh(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_4

    .line 21
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 22
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v7

    .line 23
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzaa:Lcom/google/android/gms/measurement/internal/w7;

    const/16 v10, 0xb

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v11, "_ev"

    move-object v9, v15

    move-object v4, v13

    move v13, v2

    .line 24
    invoke-virtual/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Lcom/google/android/gms/measurement/internal/w7;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    move-object v4, v13

    :goto_2
    if-eqz v3, :cond_5

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/google/android/gms/measurement/internal/c;->O(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->h0()J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->g0()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 27
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    .line 28
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    .line 29
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    .line 30
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzat;->zzy:Lcom/google/android/gms/measurement/internal/zzeg;

    .line 31
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v7, v5, v3

    if-lez v7, :cond_5

    .line 33
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v3

    .line 34
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzer;->zzv()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    const-string v4, "Fetching config for blacklisted app"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    .line 35
    invoke-direct {v1, v2}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/measurement/internal/i3;)V

    :cond_5
    return-void

    .line 36
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmi;->zzb()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 37
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v7

    .line 38
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzat;->zzbv:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 39
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Lcom/google/android/gms/measurement/internal/zzar;)Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    .line 40
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v7

    .line 41
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v8

    .line 42
    invoke-virtual {v8, v15}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Ljava/lang/String;)I

    move-result v8

    .line 43
    invoke-virtual {v7, v2, v8}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Lcom/google/android/gms/measurement/internal/zzev;I)V

    .line 44
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    .line 45
    :cond_7
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v7

    const/4 v8, 0x2

    .line 46
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzer;->zza(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 47
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v7

    .line 48
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v7

    .line 49
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfv;->zzi()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v9

    .line 50
    invoke-virtual {v9, v2}, Lcom/google/android/gms/measurement/internal/zzep;->zza(Lcom/google/android/gms/measurement/internal/zzar;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Logging event"

    invoke-virtual {v7, v10, v9}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/c;->zze()V

    .line 52
    :try_start_0
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzki;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/i3;

    const-string v7, "ecommerce_purchase"

    .line 53
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    .line 54
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "refund"

    if-nez v7, :cond_a

    :try_start_1
    const-string v7, "purchase"

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    .line 55
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    .line 56
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_3

    :cond_9
    const/4 v7, 0x0

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v7, 0x1

    :goto_4
    const-string v10, "_iap"

    .line 57
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    .line 58
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    if-eqz v7, :cond_b

    goto :goto_5

    :cond_b
    const/4 v10, 0x0

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v10, 0x1

    :goto_6
    if-eqz v10, :cond_16

    .line 59
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzar;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    const-string v11, "currency"

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzam;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v11, "value"

    if-eqz v7, :cond_f

    .line 60
    :try_start_2
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzar;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/zzam;->zzc(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    const-wide v19, 0x412e848000000000L    # 1000000.0

    mul-double v17, v17, v19

    const-wide/16 v21, 0x0

    cmpl-double v7, v17, v21

    if-nez v7, :cond_d

    .line 61
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzar;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/zzam;->zzb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    long-to-double v11, v12

    mul-double v17, v11, v19

    :cond_d
    const-wide/high16 v11, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v7, v17, v11

    if-gtz v7, :cond_e

    const-wide/high16 v11, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v7, v17, v11

    if-ltz v7, :cond_e

    .line 62
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    .line 63
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    neg-long v11, v11

    goto :goto_7

    .line 64
    :cond_e
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v7

    .line 65
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v7

    const-string v8, "Data lost. Currency value is too big. appId"

    .line 66
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 67
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 68
    invoke-virtual {v7, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-wide/from16 v23, v5

    const/4 v5, 0x0

    const/4 v11, 0x0

    goto/16 :goto_e

    .line 69
    :cond_f
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzar;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/zzam;->zzb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 70
    :cond_10
    :goto_7
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 71
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "[A-Z]{3}"

    .line 72
    invoke-virtual {v7, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    const-string v9, "_ltv_"

    .line 73
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_11

    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_11
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_8
    move-object v10, v7

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v7

    invoke-virtual {v7, v15, v10}, Lcom/google/android/gms/measurement/internal/c;->T(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/v7;

    move-result-object v7

    if-eqz v7, :cond_13

    .line 75
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/v7;->e:Ljava/lang/Object;

    instance-of v9, v7, Ljava/lang/Long;

    if-nez v9, :cond_12

    goto :goto_a

    .line 76
    :cond_12
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 77
    new-instance v17, Lcom/google/android/gms/measurement/internal/v7;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzar;->zzc:Ljava/lang/String;

    .line 78
    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfv;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v13

    .line 79
    invoke-interface {v13}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v18

    add-long/2addr v7, v11

    .line 80
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v7, v17

    move-object v8, v15

    move-wide/from16 v23, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-wide/from16 v11, v18

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/v7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_9
    move-object/from16 v6, v17

    goto :goto_c

    :cond_13
    :goto_a
    move-wide/from16 v23, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v7

    .line 82
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v9

    .line 83
    sget-object v13, Lcom/google/android/gms/measurement/internal/zzat;->zzad:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v9, v15, v13}, Lcom/google/android/gms/measurement/internal/zzy;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)I

    move-result v9

    sub-int/2addr v9, v6

    .line 84
    invoke-static {v15}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/k4;->zzc()V

    .line 86
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/o7;->zzaj()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    :try_start_3
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/c;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const-string v8, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    aput-object v15, v6, v5

    const/16 v16, 0x1

    aput-object v15, v6, v16

    .line 88
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x2

    aput-object v9, v6, v16

    .line 89
    invoke-virtual {v13, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_b

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 90
    :try_start_4
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/k4;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v7

    const-string v8, "Error pruning currencies. appId"

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v6}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    :goto_b
    new-instance v17, Lcom/google/android/gms/measurement/internal/v7;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzar;->zzc:Ljava/lang/String;

    .line 92
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfv;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    .line 93
    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v18

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v7, v17

    move-object v8, v15

    move-wide/from16 v11, v18

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/v7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_9

    .line 94
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/c;->z(Lcom/google/android/gms/measurement/internal/v7;)Z

    move-result v7

    if-nez v7, :cond_15

    .line 95
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v7

    .line 96
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v7

    const-string v8, "Too many unique user properties are set. Ignoring user property. appId"

    .line 97
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 98
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfv;->zzi()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v10

    .line 99
    iget-object v11, v6, Lcom/google/android/gms/measurement/internal/v7;->c:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzep;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/v7;->e:Ljava/lang/Object;

    .line 100
    invoke-virtual {v7, v8, v9, v10, v6}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v7

    .line 102
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzaa:Lcom/google/android/gms/measurement/internal/w7;

    const/16 v10, 0x9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v9, v15

    .line 103
    invoke-virtual/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Lcom/google/android/gms/measurement/internal/w7;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_d

    :cond_14
    move-wide/from16 v23, v5

    const/4 v5, 0x0

    :cond_15
    :goto_d
    const/4 v11, 0x1

    :goto_e
    if-nez v11, :cond_17

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->c0()V

    return-void

    :cond_16
    move-wide/from16 v23, v5

    const/4 v5, 0x0

    .line 106
    :cond_17
    :try_start_5
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Ljava/lang/String;)Z

    move-result v6

    .line 107
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 108
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    .line 109
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzar;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Lcom/google/android/gms/measurement/internal/zzam;)J

    move-result-wide v7

    const-wide/16 v19, 0x1

    add-long v11, v7, v19

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v7

    .line 111
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzy()J

    move-result-wide v8

    const/4 v13, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v15

    move v14, v6

    move-object/from16 p1, v15

    move/from16 v15, v16

    move/from16 v16, v18

    .line 112
    invoke-virtual/range {v7 .. v17}, Lcom/google/android/gms/measurement/internal/c;->h(JLjava/lang/String;JZZZZZ)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v7

    .line 113
    iget-wide v8, v7, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:J

    .line 114
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzat;->zzj:Lcom/google/android/gms/measurement/internal/zzeg;

    const/4 v14, 0x0

    .line 115
    invoke-virtual {v10, v14}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 116
    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    const-wide/16 v12, 0x0

    cmp-long v15, v8, v12

    if-lez v15, :cond_19

    .line 117
    rem-long/2addr v8, v10

    cmp-long v2, v8, v19

    if-nez v2, :cond_18

    .line 118
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    const-string v3, "Data loss. Too many events logged. appId, count"

    .line 120
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v7, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:J

    .line 121
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 122
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->c0()V

    return-void

    :cond_19
    if-eqz v6, :cond_1b

    .line 125
    :try_start_6
    iget-wide v8, v7, Lcom/google/android/gms/measurement/internal/zzaf;->zza:J

    .line 126
    sget-object v15, Lcom/google/android/gms/measurement/internal/zzat;->zzl:Lcom/google/android/gms/measurement/internal/zzeg;

    .line 127
    invoke-virtual {v15, v14}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 128
    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-long v14, v15

    sub-long/2addr v8, v14

    cmp-long v14, v8, v12

    if-lez v14, :cond_1b

    .line 129
    rem-long/2addr v8, v10

    cmp-long v3, v8, v19

    if-nez v3, :cond_1a

    .line 130
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v3

    .line 131
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    const-string v4, "Data loss. Too many public events logged. appId, count"

    .line 132
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v6, v7, Lcom/google/android/gms/measurement/internal/zzaf;->zza:J

    .line 133
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 134
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    :cond_1a
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v7

    .line 136
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzaa:Lcom/google/android/gms/measurement/internal/w7;

    const/16 v10, 0x10

    const-string v11, "_ev"

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v9, p1

    .line 137
    invoke-virtual/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Lcom/google/android/gms/measurement/internal/w7;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->c0()V

    return-void

    :cond_1b
    if-eqz v18, :cond_1d

    .line 140
    :try_start_7
    iget-wide v8, v7, Lcom/google/android/gms/measurement/internal/zzaf;->zzd:J

    .line 141
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v10

    .line 142
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 143
    sget-object v14, Lcom/google/android/gms/measurement/internal/zzat;->zzk:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v10, v11, v14}, Lcom/google/android/gms/measurement/internal/zzy;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)I

    move-result v10

    const v11, 0xf4240

    .line 144
    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 145
    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v8, v10

    cmp-long v10, v8, v12

    if-lez v10, :cond_1d

    cmp-long v2, v8, v19

    if-nez v2, :cond_1c

    .line 146
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v2

    .line 147
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    const-string v3, "Too many error events logged. appId, count"

    .line 148
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v7, Lcom/google/android/gms/measurement/internal/zzaf;->zzd:J

    .line 149
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 150
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->a()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->c0()V

    return-void

    .line 153
    :cond_1d
    :try_start_8
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzar;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzam;->zzb()Landroid/os/Bundle;

    move-result-object v14

    .line 154
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v7

    const-string v8, "_o"

    .line 155
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzar;->zzc:Ljava/lang/String;

    invoke-virtual {v7, v14, v8, v9}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v7

    move-object/from16 v15, p1

    .line 157
    invoke-virtual {v7, v15}, Lcom/google/android/gms/measurement/internal/zzkw;->zze(Ljava/lang/String;)Z

    move-result v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v11, "_r"

    if-eqz v7, :cond_1e

    .line 158
    :try_start_9
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v7

    const-string v8, "_dbg"

    .line 159
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v14, v8, v9}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v7

    .line 161
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v14, v11, v8}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1e
    const-string v7, "_s"

    .line 162
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 164
    invoke-virtual {v7, v8, v4}, Lcom/google/android/gms/measurement/internal/c;->T(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/v7;

    move-result-object v7

    if-eqz v7, :cond_1f

    .line 165
    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/v7;->e:Ljava/lang/Object;

    instance-of v8, v8, Ljava/lang/Long;

    if-eqz v8, :cond_1f

    .line 166
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v8

    .line 167
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/v7;->e:Ljava/lang/Object;

    invoke-virtual {v8, v14, v4, v7}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/google/android/gms/measurement/internal/c;->S(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v4, v7, v12

    if-lez v4, :cond_20

    .line 169
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v4

    .line 170
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v4

    const-string v9, "Data lost. Too many events stored on disk, deleted. appId"

    .line 171
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 172
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 173
    invoke-virtual {v4, v9, v10, v7}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    :cond_20
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzak;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzar;->zzc:Ljava/lang/String;

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    iget-wide v12, v2, Lcom/google/android/gms/measurement/internal/zzar;->zzd:J

    const-wide/16 v18, 0x0

    move-object v7, v4

    move-object v2, v10

    move-object v10, v15

    move-object v5, v11

    move-object v11, v2

    move-object/from16 v16, v14

    move-object v2, v15

    const/16 v25, 0x0

    move-wide/from16 v14, v18

    invoke-direct/range {v7 .. v16}, Lcom/google/android/gms/measurement/internal/zzak;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v7

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zzak;->zzb:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Lcom/google/android/gms/measurement/internal/c;->j(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/h;

    move-result-object v7

    if-nez v7, :cond_22

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/google/android/gms/measurement/internal/c;->d0(Ljava/lang/String;)J

    move-result-wide v7

    .line 177
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v9

    .line 178
    invoke-virtual {v9, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zzb(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    cmp-long v11, v7, v9

    if-ltz v11, :cond_21

    if-eqz v6, :cond_21

    .line 179
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v3

    .line 180
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    const-string v5, "Too many event names used, ignoring event. appId, name, supported count"

    .line 181
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 182
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zzi()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v7

    .line 183
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzak;->zzb:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/zzep;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 184
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v7

    .line 185
    invoke-virtual {v7, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zzb(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 186
    invoke-virtual {v3, v5, v6, v4, v7}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v7

    .line 188
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzaa:Lcom/google/android/gms/measurement/internal/w7;

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v9, v2

    .line 189
    invoke-virtual/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Lcom/google/android/gms/measurement/internal/w7;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->c0()V

    return-void

    .line 191
    :cond_21
    :try_start_a
    new-instance v6, Lcom/google/android/gms/measurement/internal/h;

    iget-object v9, v4, Lcom/google/android/gms/measurement/internal/zzak;->zzb:Ljava/lang/String;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    iget-wide v14, v4, Lcom/google/android/gms/measurement/internal/zzak;->zzc:J

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v7, v6

    move-object v8, v2

    invoke-direct/range {v7 .. v21}, Lcom/google/android/gms/measurement/internal/h;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_f

    .line 192
    :cond_22
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-wide v8, v7, Lcom/google/android/gms/measurement/internal/h;->f:J

    invoke-virtual {v4, v2, v8, v9}, Lcom/google/android/gms/measurement/internal/zzak;->zza(Lcom/google/android/gms/measurement/internal/zzfv;J)Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v4

    .line 193
    iget-wide v8, v4, Lcom/google/android/gms/measurement/internal/zzak;->zzc:J

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/h;->a(J)Lcom/google/android/gms/measurement/internal/h;

    move-result-object v6

    .line 194
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/c;->t(Lcom/google/android/gms/measurement/internal/h;)V

    .line 195
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzx()V

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzn()V

    .line 197
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/zzak;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 200
    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/zzak;->zza:Ljava/lang/String;

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 201
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzbh()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v2

    const-string v7, "android"

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v2

    .line 202
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_23

    .line 203
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 204
    :cond_23
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_24

    .line 205
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 206
    :cond_24
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_25

    .line 207
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 208
    :cond_25
    iget-wide v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzj:J

    const-wide/32 v9, -0x80000000

    cmp-long v11, v7, v9

    if-eqz v11, :cond_26

    long-to-int v8, v7

    .line 209
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzh(I)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 210
    :cond_26
    iget-wide v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zze:J

    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzf(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 211
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_27

    .line 212
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 213
    :cond_27
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v7

    if-eqz v7, :cond_28

    .line 214
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v7

    .line 215
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzat;->zzci:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 216
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 217
    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzw:Ljava/lang/String;

    .line 218
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzad;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzad;->zzb(Lcom/google/android/gms/measurement/internal/zzad;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v7

    .line 219
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzad;->zza()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzq(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 220
    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznt;->zzb()Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 221
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v7

    .line 222
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzat;->zzbi:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 223
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_29

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzv:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_29

    .line 224
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzv:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzp(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 225
    :cond_29
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 226
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzs()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2b

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    .line 227
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2b

    .line 228
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto :goto_10

    .line 229
    :cond_2a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2b

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2b

    .line 230
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 231
    :cond_2b
    :goto_10
    iget-wide v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzf:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_2c

    .line 232
    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzh(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 233
    :cond_2c
    iget-wide v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzt:J

    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzk(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzks;->zze()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2d

    .line 235
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 236
    :cond_2d
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 237
    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzw:Ljava/lang/String;

    .line 238
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzad;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzad;->zzb(Lcom/google/android/gms/measurement/internal/zzad;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v7

    .line 239
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 240
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v8

    .line 241
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzat;->zzci:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 242
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzad;->zzc()Z

    move-result v8

    if-eqz v8, :cond_33

    .line 243
    :cond_2e
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzj:Lcom/google/android/gms/measurement/internal/zzjo;

    .line 244
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 245
    invoke-virtual {v8, v11, v7}, Lcom/google/android/gms/measurement/internal/zzjo;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzad;)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_2f

    .line 246
    iget-object v11, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2f

    .line 247
    iget-boolean v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzo:Z

    if-eqz v11, :cond_33

    .line 248
    iget-object v11, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 249
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v8, :cond_33

    .line 250
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(Z)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    goto/16 :goto_12

    .line 251
    :cond_2f
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfv;->zzw()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v8

    .line 252
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfv;->zzm()Landroid/content/Context;

    move-result-object v11

    .line 253
    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_33

    iget-boolean v8, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzp:Z

    if-eqz v8, :cond_33

    .line 254
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzox;->zzb()Z

    move-result v8

    if-eqz v8, :cond_30

    .line 255
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v8

    .line 256
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzat;->zzcf:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v8, v11, v12}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v8

    if-nez v8, :cond_33

    .line 257
    :cond_30
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfv;->zzm()Landroid/content/Context;

    move-result-object v8

    .line 258
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "android_id"

    .line 259
    invoke-static {v8, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_31

    .line 260
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v8

    .line 261
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v8

    const-string v11, "null secure ID. appId"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v8, "null"

    goto :goto_11

    .line 262
    :cond_31
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_32

    .line 263
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v11

    .line 264
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v11

    const-string v12, "empty secure ID. appId"

    .line 265
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 266
    :cond_32
    :goto_11
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 267
    :cond_33
    :goto_12
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfv;->zzw()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v8

    .line 268
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/n4;->zzaa()V

    .line 269
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 270
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v8

    .line 271
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfv;->zzw()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v11

    .line 272
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/n4;->zzaa()V

    .line 273
    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 274
    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v8

    .line 275
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfv;->zzw()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v11

    .line 276
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzal;->zze()J

    move-result-wide v11

    long-to-int v12, v11

    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzf(I)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v8

    .line 277
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfv;->zzw()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v11

    .line 278
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzal;->zzf()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 279
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v8

    .line 280
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzat;->zzbx:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v8

    if-nez v8, :cond_34

    .line 281
    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzl:J

    invoke-virtual {v2, v11, v12}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 282
    :cond_34
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfv;->zzaa()Z

    move-result v8

    if-eqz v8, :cond_36

    .line 283
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v8

    if-eqz v8, :cond_35

    .line 284
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v8

    .line 285
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzat;->zzci:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 286
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    goto :goto_13

    .line 287
    :cond_35
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    .line 288
    :goto_13
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_36

    move-object/from16 v8, v25

    .line 289
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 290
    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v8

    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/c;->O(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v8

    if-nez v8, :cond_3b

    .line 291
    new-instance v8, Lcom/google/android/gms/measurement/internal/i3;

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v12, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-direct {v8, v11, v12}, Lcom/google/android/gms/measurement/internal/i3;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v11

    if-eqz v11, :cond_37

    .line 293
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v11

    .line 294
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzat;->zzci:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v11

    if-eqz v11, :cond_37

    .line 295
    invoke-direct {v1, v7}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/measurement/internal/zzad;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/i3;->c(Ljava/lang/String;)V

    goto :goto_14

    .line 296
    :cond_37
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzz()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/i3;->c(Ljava/lang/String;)V

    .line 297
    :goto_14
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzk:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/i3;->F(Ljava/lang/String;)V

    .line 298
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/i3;->r(Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v11

    if-eqz v11, :cond_38

    .line 300
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v11

    .line 301
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzat;->zzci:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v11

    if-eqz v11, :cond_38

    .line 302
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzad;->zzc()Z

    move-result v11

    if-eqz v11, :cond_39

    .line 303
    :cond_38
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzj:Lcom/google/android/gms/measurement/internal/zzjo;

    .line 304
    iget-object v12, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzjo;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 305
    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/i3;->C(Ljava/lang/String;)V

    .line 306
    :cond_39
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/i3;->H(J)V

    .line 307
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/i3;->a(J)V

    .line 308
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/i3;->q(J)V

    .line 309
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/i3;->I(Ljava/lang/String;)V

    .line 310
    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzj:J

    invoke-virtual {v8, v11, v12}, Lcom/google/android/gms/measurement/internal/i3;->u(J)V

    .line 311
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/i3;->L(Ljava/lang/String;)V

    .line 312
    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zze:J

    invoke-virtual {v8, v11, v12}, Lcom/google/android/gms/measurement/internal/i3;->y(J)V

    .line 313
    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzf:J

    invoke-virtual {v8, v11, v12}, Lcom/google/android/gms/measurement/internal/i3;->B(J)V

    .line 314
    iget-boolean v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/i3;->e(Z)V

    .line 315
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v11

    .line 316
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzat;->zzbx:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v11

    if-nez v11, :cond_3a

    .line 317
    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzl:J

    invoke-virtual {v8, v11, v12}, Lcom/google/android/gms/measurement/internal/i3;->c0(J)V

    .line 318
    :cond_3a
    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzn;->zzt:J

    invoke-virtual {v8, v11, v12}, Lcom/google/android/gms/measurement/internal/i3;->E(J)V

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/google/android/gms/measurement/internal/c;->u(Lcom/google/android/gms/measurement/internal/i3;)V

    .line 320
    :cond_3b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v11

    if-eqz v11, :cond_3c

    .line 321
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v11

    .line 322
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzat;->zzci:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v11

    if-eqz v11, :cond_3c

    .line 323
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzad;->zze()Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 324
    :cond_3c
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/i3;->x()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3d

    .line 325
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/i3;->x()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 326
    :cond_3d
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/i3;->M()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3e

    .line 327
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/i3;->M()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 328
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v7

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v7, v3}, Lcom/google/android/gms/measurement/internal/c;->o(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v11, 0x0

    .line 329
    :goto_15
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v11, v7, :cond_3f

    .line 330
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzk;->zzj()Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v7

    .line 331
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/measurement/internal/v7;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/v7;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v7

    .line 332
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/measurement/internal/v7;

    iget-wide v12, v8, Lcom/google/android/gms/measurement/internal/v7;->d:J

    invoke-virtual {v7, v12, v13}, Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;

    move-result-object v7

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    move-result-object v8

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/v7;

    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/v7;->e:Ljava/lang/Object;

    invoke-virtual {v8, v7, v12}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;Ljava/lang/Object;)V

    .line 334
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzk$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    .line 335
    :cond_3f
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v3, v7}, Lcom/google/android/gms/measurement/internal/c;->e(Lcom/google/android/gms/internal/measurement/zzcd$zzg;)J

    move-result-wide v2
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 336
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v7

    .line 337
    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zzak;->zze:Lcom/google/android/gms/measurement/internal/zzam;

    if-eqz v8, :cond_42

    .line 338
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzam;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_40
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_41

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 339
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_40

    :goto_16
    const/4 v11, 0x1

    goto :goto_17

    .line 340
    :cond_41
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzc()Lcom/google/android/gms/measurement/internal/zzfp;

    move-result-object v5

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zzak;->zza:Ljava/lang/String;

    iget-object v11, v4, Lcom/google/android/gms/measurement/internal/zzak;->zzb:Ljava/lang/String;

    invoke-virtual {v5, v8, v11}, Lcom/google/android/gms/measurement/internal/zzfp;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v11

    .line 342
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzy()J

    move-result-wide v12

    iget-object v14, v4, Lcom/google/android/gms/measurement/internal/zzak;->zza:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v11 .. v19}, Lcom/google/android/gms/measurement/internal/c;->i(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v8

    if-eqz v5, :cond_42

    .line 343
    iget-wide v11, v8, Lcom/google/android/gms/measurement/internal/zzaf;->zze:J

    .line 344
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v5

    .line 345
    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zzak;->zza:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/google/android/gms/measurement/internal/zzy;->zzc(Ljava/lang/String;)I

    move-result v5

    int-to-long v13, v5

    cmp-long v5, v11, v13

    if-gez v5, :cond_42

    goto :goto_16

    :cond_42
    const/4 v11, 0x0

    .line 346
    :goto_17
    invoke-virtual {v7, v4, v2, v3, v11}, Lcom/google/android/gms/measurement/internal/c;->y(Lcom/google/android/gms/measurement/internal/zzak;JZ)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 347
    iput-wide v9, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzn:J

    goto :goto_18

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 348
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v4

    .line 349
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v4

    const-string v5, "Data loss. Failed to insert raw event metadata. appId"

    .line 350
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 351
    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 352
    :cond_43
    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->a()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->c0()V

    .line 354
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzab()V

    .line 355
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v2

    .line 356
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 357
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, v3, v23

    const-wide/32 v5, 0x7a120

    add-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Background event processing time, ms"

    .line 358
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/c;->c0()V

    .line 360
    throw v2
.end method

.method private final zze(Lcom/google/android/gms/measurement/internal/zzn;)Z
    .locals 5

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznt;->zzb()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    .line 5
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzat;->zzbi:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzv:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v2

    .line 9
    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v2
.end method

.method private final zzv()Lcom/google/android/gms/measurement/internal/k3;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zze:Lcom/google/android/gms/measurement/internal/k3;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzw()Lcom/google/android/gms/measurement/internal/zzke;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzf:Lcom/google/android/gms/measurement/internal/zzke;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzki;->zzb(Lcom/google/android/gms/measurement/internal/o7;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzf:Lcom/google/android/gms/measurement/internal/zzke;

    return-object v0
.end method

.method private final zzx()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzp()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/k4;->zzc()V

    return-void
.end method

.method private final zzy()J
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/n4;->zzaa()V

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/k4;->zzc()V

    .line 6
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/m3;->h:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfh;->zza()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    const-wide/16 v3, 0x1

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/k4;->zzo()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzkw;->zzg()Ljava/security/SecureRandom;

    move-result-object v5

    const v6, 0x5265c00

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 8
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/m3;->h:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzfh;->zza(J)V

    :cond_0
    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    .line 9
    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzz()Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkw;->zzg()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v0, 0x0

    aput-object v4, v3, v0

    const-string v0, "%032x"

    invoke-static {v1, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 73
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzad;->zza:Lcom/google/android/gms/measurement/internal/zzad;

    .line 74
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v1

    .line 76
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzat;->zzci:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzx()V

    .line 78
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzn()V

    .line 79
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzz:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzad;

    if-nez v1, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/c;->g0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 81
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzad;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    :cond_2
    :goto_1
    return-object v0
.end method

.method protected final zza()V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzp()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/k4;->zzc()V

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->zzu()V

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    .line 43
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/m3;->d:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfh;->zza()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    .line 45
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/m3;->d:Lcom/google/android/gms/measurement/internal/zzfh;

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 47
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfh;->zza(J)V

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzab()V

    return-void
.end method

.method final zza(ILjava/lang/Throwable;[BLjava/lang/String;)V
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 761
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzx()V

    .line 762
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzn()V

    const/4 p4, 0x0

    if-nez p3, :cond_0

    :try_start_0
    new-array p3, p4, [B

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzw:Ljava/util/List;

    const/4 v1, 0x0

    .line 764
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzw:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0xc8

    const/4 v3, 0x1

    if-eq p1, v2, :cond_1

    const/16 v2, 0xcc

    if-ne p1, v2, :cond_6

    :cond_1
    if-nez p2, :cond_6

    .line 765
    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p2

    .line 766
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/m3;->d:Lcom/google/android/gms/measurement/internal/zzfh;

    .line 767
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 768
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfh;->zza(J)V

    .line 769
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p2

    .line 770
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/m3;->e:Lcom/google/android/gms/measurement/internal/zzfh;

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfh;->zza(J)V

    .line 771
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzab()V

    .line 772
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p2

    .line 773
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p2

    const-string v2, "Successful upload. Got network response. code, size"

    .line 774
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v2, p1, p3}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 775
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->zze()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 776
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 777
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 778
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/k4;->zzc()V

    .line 779
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/o7;->zzaj()V

    .line 780
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/c;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/String;

    .line 781
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, p4
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v6, "queue"

    const-string v7, "rowid=?"

    .line 782
    invoke-virtual {v0, v6, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_2

    goto :goto_0

    .line 783
    :cond_2
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v2, "Deleted fewer rows from queue than expected"

    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move-exception v0

    .line 784
    :try_start_5
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/k4;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p3

    const-string v2, "Failed to delete a bundle in a queue table"

    invoke-virtual {p3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 785
    throw v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    move-exception p3

    .line 786
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzx:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 787
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 788
    :cond_3
    throw p3

    .line 789
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 790
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->c0()V

    .line 791
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzx:Ljava/util/List;

    .line 792
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzd()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zze()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzaa()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 793
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzo()V

    goto :goto_1

    :cond_5
    const-wide/16 p1, -0x1

    .line 794
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzy:J

    .line 795
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzab()V

    .line 796
    :goto_1
    iput-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzn:J

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    .line 797
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/c;->c0()V

    .line 798
    throw p1
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_2
    move-exception p1

    .line 799
    :try_start_8
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p2

    .line 800
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p2

    const-string p3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 801
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    .line 802
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzn:J

    .line 803
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p1

    .line 804
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    const-string p2, "Disable upload, time"

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzn:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 805
    :cond_6
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p3

    .line 806
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p3

    const-string v1, "Network upload failed. Will retry later. code, error"

    .line 807
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 808
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p2

    .line 809
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/m3;->e:Lcom/google/android/gms/measurement/internal/zzfh;

    .line 810
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    .line 811
    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfh;->zza(J)V

    const/16 p2, 0x1f7

    if-eq p1, p2, :cond_8

    const/16 p2, 0x1ad

    if-ne p1, p2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :cond_8
    :goto_2
    if-eqz v3, :cond_9

    .line 812
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p1

    .line 813
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/m3;->f:Lcom/google/android/gms/measurement/internal/zzfh;

    .line 814
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    .line 815
    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzfh;->zza(J)V

    .line 816
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/c;->w(Ljava/util/List;)V

    .line 817
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzab()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 818
    :goto_3
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzs:Z

    .line 819
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzac()V

    return-void

    :catchall_1
    move-exception p1

    .line 820
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzs:Z

    .line 821
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzac()V

    .line 822
    throw p1
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 0

    .line 1044
    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzp:I

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 19
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 121
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzx()V

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzn()V

    .line 125
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 126
    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzar;->zzd:J

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 128
    :cond_0
    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-nez v4, :cond_1

    .line 129
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzki;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/i3;

    return-void

    .line 130
    :cond_1
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzu:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 131
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 132
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzar;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzam;->zzb()Landroid/os/Bundle;

    move-result-object v4

    const-wide/16 v5, 0x1

    const-string v7, "ga_safelisted"

    .line 133
    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 134
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzar;

    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzam;

    invoke-direct {v15, v4}, Lcom/google/android/gms/measurement/internal/zzam;-><init>(Landroid/os/Bundle;)V

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzar;->zzc:Ljava/lang/String;

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/zzar;->zzd:J

    move-object v13, v5

    move-object/from16 v16, v4

    move-wide/from16 v17, v6

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzam;Ljava/lang/String;J)V

    move-object v0, v5

    goto :goto_0

    .line 135
    :cond_2
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v2

    .line 136
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzer;->zzv()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzar;->zzc:Ljava/lang/String;

    const-string v5, "Dropping non-safelisted event. appId, event name, origin"

    .line 137
    invoke-virtual {v2, v5, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 138
    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c;->zze()V

    .line 139
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v4

    .line 140
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/k4;->zzc()V

    .line 142
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/o7;->zzaj()V

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    cmp-long v8, v11, v5

    if-gez v8, :cond_4

    .line 143
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/k4;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v4

    .line 144
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v4

    const-string v5, "Invalid time querying timed out conditional properties"

    .line 145
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 146
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 147
    invoke-virtual {v4, v5, v6, v9}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_1

    :cond_4
    const-string v5, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    new-array v6, v7, [Ljava/lang/String;

    aput-object v3, v6, v13

    .line 149
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v14

    .line 150
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/c;->r(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 151
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/zzw;

    if-eqz v5, :cond_5

    .line 152
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v6

    .line 153
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v6

    const-string v9, "User property timed out"

    iget-object v10, v5, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    .line 154
    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzfv;->zzi()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v15

    .line 155
    iget-object v14, v5, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v14, v14, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    invoke-virtual {v15, v14}, Lcom/google/android/gms/measurement/internal/zzep;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v5, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 156
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzkr;->zza()Ljava/lang/Object;

    move-result-object v15

    .line 157
    invoke-virtual {v6, v9, v10, v14, v15}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzw;->zzg:Lcom/google/android/gms/measurement/internal/zzar;

    if-eqz v6, :cond_6

    .line 159
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzar;

    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/zzw;->zzg:Lcom/google/android/gms/measurement/internal/zzar;

    invoke-direct {v6, v9, v11, v12}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Lcom/google/android/gms/measurement/internal/zzar;J)V

    invoke-direct {v1, v6, v2}, Lcom/google/android/gms/measurement/internal/zzki;->zzc(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 160
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v6

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    invoke-virtual {v6, v3, v5}, Lcom/google/android/gms/measurement/internal/c;->W(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    goto :goto_2

    .line 161
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v4

    .line 162
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/k4;->zzc()V

    .line 164
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/o7;->zzaj()V

    if-gez v8, :cond_8

    .line 165
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/k4;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v4

    .line 166
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v4

    const-string v5, "Invalid time querying expired conditional properties"

    .line 167
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 168
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 169
    invoke-virtual {v4, v5, v6, v9}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 170
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_3

    :cond_8
    const-string v5, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    new-array v6, v7, [Ljava/lang/String;

    aput-object v3, v6, v13

    .line 171
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v6, v10

    .line 172
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/c;->r(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 173
    :goto_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/measurement/internal/zzw;

    if-eqz v6, :cond_9

    .line 175
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v9

    .line 176
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v9

    const-string v10, "User property expired"

    iget-object v14, v6, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    .line 177
    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzfv;->zzi()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v15

    .line 178
    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    invoke-virtual {v15, v7}, Lcom/google/android/gms/measurement/internal/zzep;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v15, v6, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 179
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzkr;->zza()Ljava/lang/Object;

    move-result-object v15

    .line 180
    invoke-virtual {v9, v10, v14, v7, v15}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v7

    iget-object v9, v6, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    invoke-virtual {v7, v3, v9}, Lcom/google/android/gms/measurement/internal/c;->Q(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/zzw;->zzk:Lcom/google/android/gms/measurement/internal/zzar;

    if-eqz v7, :cond_a

    .line 183
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v7

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    invoke-virtual {v7, v3, v6}, Lcom/google/android/gms/measurement/internal/c;->W(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    goto :goto_4

    .line 185
    :cond_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v4, :cond_c

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/google/android/gms/measurement/internal/zzar;

    .line 186
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzar;

    invoke-direct {v9, v7, v11, v12}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Lcom/google/android/gms/measurement/internal/zzar;J)V

    invoke-direct {v1, v9, v2}, Lcom/google/android/gms/measurement/internal/zzki;->zzc(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_5

    .line 187
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    .line 188
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/k4;->zzc()V

    .line 191
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/o7;->zzaj()V

    if-gez v8, :cond_d

    .line 192
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/k4;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v6

    .line 193
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v6

    const-string v7, "Invalid time querying triggered conditional properties"

    .line 194
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 195
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/k4;->zzn()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzep;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 196
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 197
    invoke-virtual {v6, v7, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_6

    :cond_d
    const-string v6, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    aput-object v3, v7, v13

    const/4 v3, 0x1

    aput-object v5, v7, v3

    .line 199
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v7, v5

    .line 200
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/c;->r(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 201
    :goto_6
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/google/android/gms/measurement/internal/zzw;

    if-eqz v15, :cond_e

    .line 203
    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 204
    new-instance v10, Lcom/google/android/gms/measurement/internal/v7;

    iget-object v5, v15, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    .line 205
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza()Ljava/lang/Object;

    move-result-object v16

    move-object v4, v10

    move-wide v8, v11

    move-object v13, v10

    move-object/from16 v10, v16

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/v7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/google/android/gms/measurement/internal/c;->z(Lcom/google/android/gms/measurement/internal/v7;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 207
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v4

    .line 208
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v4

    const-string v5, "User property triggered"

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    .line 209
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zzi()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v7

    .line 210
    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/v7;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzep;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/v7;->e:Ljava/lang/Object;

    .line 211
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 212
    :cond_f
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v4

    .line 213
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v4

    const-string v5, "Too many active user properties, ignoring"

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    .line 214
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 215
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zzi()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v7

    .line 216
    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/v7;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzep;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/v7;->e:Ljava/lang/Object;

    .line 217
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 218
    :goto_8
    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzw;->zzi:Lcom/google/android/gms/measurement/internal/zzar;

    if-eqz v4, :cond_10

    .line 219
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_10
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-direct {v4, v13}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Lcom/google/android/gms/measurement/internal/v7;)V

    iput-object v4, v15, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    const/4 v4, 0x1

    .line 221
    iput-boolean v4, v15, Lcom/google/android/gms/measurement/internal/zzw;->zze:Z

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v5

    invoke-virtual {v5, v15}, Lcom/google/android/gms/measurement/internal/c;->zza(Lcom/google/android/gms/measurement/internal/zzw;)Z

    const/4 v13, 0x0

    goto/16 :goto_7

    .line 223
    :cond_11
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzki;->zzc(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 224
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v0, :cond_12

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v13, v13, 0x1

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzar;

    .line 225
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzar;

    invoke-direct {v4, v3, v11, v12}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Lcom/google/android/gms/measurement/internal/zzar;J)V

    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzki;->zzc(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_9

    .line 226
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->c0()V

    return-void

    :catchall_0
    move-exception v0

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->c0()V

    .line 229
    throw v0
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzar;Ljava/lang/String;)V
    .locals 35
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/c;->O(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 83
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->T()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_3

    .line 84
    :cond_0
    invoke-direct {v0, v2}, Lcom/google/android/gms/measurement/internal/zzki;->zzb(Lcom/google/android/gms/measurement/internal/i3;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1

    .line 85
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    const-string v5, "_ui"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 86
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v4

    .line 87
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Could not find package. appId"

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 89
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 91
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "App version does not match; dropping event. appId"

    .line 92
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 93
    :cond_2
    :goto_0
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzn;

    .line 94
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->A()Ljava/lang/String;

    move-result-object v4

    .line 95
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->T()Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->V()J

    move-result-wide v6

    .line 97
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->X()Ljava/lang/String;

    move-result-object v8

    .line 98
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->Z()J

    move-result-wide v9

    .line 99
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->b0()J

    move-result-wide v11

    .line 100
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->e0()Z

    move-result v14

    const/16 v16, 0x0

    .line 101
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->M()Ljava/lang/String;

    move-result-object v17

    .line 102
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->k()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    .line 103
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->l()Z

    move-result v23

    .line 104
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->m()Z

    move-result v24

    const/16 v25, 0x0

    .line 105
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->D()Ljava/lang/String;

    move-result-object v26

    .line 106
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->n()Ljava/lang/Boolean;

    move-result-object v27

    .line 107
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->d0()J

    move-result-wide v28

    .line 108
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->o()Ljava/util/List;

    move-result-object v30

    .line 109
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznt;->zzb()Z

    move-result v31

    if-eqz v31, :cond_3

    .line 110
    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v13

    .line 111
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->t()Ljava/lang/String;

    move-result-object v1

    move/from16 v32, v14

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzat;->zzbi:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v13, v1, v14}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 112
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->G()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move/from16 v32, v14

    :cond_4
    const/4 v1, 0x0

    .line 113
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 114
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v2

    .line 115
    sget-object v13, Lcom/google/android/gms/measurement/internal/zzat;->zzci:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v2, v13}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 116
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzad;->zza()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    const-string v2, ""

    :goto_2
    move-object/from16 v33, v2

    move-object v2, v15

    move-object/from16 v3, p2

    const/4 v13, 0x0

    move/from16 v14, v32

    move-object/from16 v34, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    move-wide/from16 v17, v18

    move-wide/from16 v19, v20

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-wide/from16 v27, v28

    move-object/from16 v29, v30

    move-object/from16 v30, v1

    move-object/from16 v31, v33

    .line 117
    invoke-direct/range {v2 .. v31}, Lcom/google/android/gms/measurement/internal/zzn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    .line 118
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzki;->zzb(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V

    return-void

    .line 119
    :cond_6
    :goto_3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzer;->zzv()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    const-string v2, "No app data available; dropping event"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzkr;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 13
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 976
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzx()V

    .line 977
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzn()V

    .line 978
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzki;->zze(Lcom/google/android/gms/measurement/internal/zzn;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 979
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-nez v0, :cond_1

    .line 980
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzki;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/i3;

    return-void

    .line 981
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    .line 982
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkw;->zzb(Ljava/lang/String;)I

    move-result v5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-eqz v5, :cond_3

    .line 983
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    .line 984
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    .line 985
    invoke-static {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v7

    .line 986
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    move v8, p1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    .line 987
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v2

    .line 988
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzaa:Lcom/google/android/gms/measurement/internal/w7;

    iget-object v4, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-string v6, "_ev"

    .line 989
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Lcom/google/android/gms/measurement/internal/w7;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 990
    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v3

    .line 991
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzkw;->zzb(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v9

    if-eqz v9, :cond_6

    .line 992
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    .line 993
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    .line 994
    invoke-static {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v11

    .line 995
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 996
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_4

    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    .line 997
    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 998
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v12, v0

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    .line 999
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v6

    .line 1000
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzaa:Lcom/google/android/gms/measurement/internal/w7;

    iget-object v8, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-string v10, "_ev"

    .line 1001
    invoke-virtual/range {v6 .. v12}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Lcom/google/android/gms/measurement/internal/w7;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 1002
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    .line 1003
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    .line 1004
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkw;->zzc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 1005
    :cond_7
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    const-string v2, "_sid"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1006
    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzkr;->zzb:J

    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zzkr;->zze:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 1007
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    iget-object v6, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-string v8, "_sno"

    .line 1008
    invoke-virtual {v3, v6, v8}, Lcom/google/android/gms/measurement/internal/c;->T(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/v7;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1009
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/v7;->e:Ljava/lang/Object;

    instance-of v8, v6, Ljava/lang/Long;

    if-eqz v8, :cond_8

    .line 1010
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    .line 1011
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v6

    .line 1012
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v6

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/v7;->e:Ljava/lang/Object;

    const-string v8, "Retrieved last session number from database does not contain a valid (long) value"

    .line 1013
    invoke-virtual {v6, v8, v3}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1014
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    iget-object v6, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-string v8, "_s"

    .line 1015
    invoke-virtual {v3, v6, v8}, Lcom/google/android/gms/measurement/internal/c;->j(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/h;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1016
    iget-wide v1, v3, Lcom/google/android/gms/measurement/internal/h;->c:J

    .line 1017
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v3

    .line 1018
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    .line 1019
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "Backfill the session number. Last used session number"

    invoke-virtual {v3, v8, v6}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    :goto_2
    const-wide/16 v8, 0x1

    add-long/2addr v1, v8

    .line 1020
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzkr;

    .line 1021
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "_sno"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 1022
    invoke-virtual {p0, v8, p2}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/measurement/internal/zzkr;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 1023
    :cond_b
    new-instance v1, Lcom/google/android/gms/measurement/internal/v7;

    iget-object v4, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzkr;->zze:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    iget-wide v7, p1, Lcom/google/android/gms/measurement/internal/zzkr;->zzb:J

    move-object v3, v1

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/v7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 1024
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p1

    .line 1025
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    .line 1026
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzi()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v2

    .line 1027
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/v7;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzep;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Setting user property"

    .line 1028
    invoke-virtual {p1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1029
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->zze()V

    .line 1030
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzki;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/i3;

    .line 1031
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/c;->z(Lcom/google/android/gms/measurement/internal/v7;)Z

    move-result p1

    .line 1032
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->a()V

    if-nez p1, :cond_c

    .line 1033
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p1

    .line 1034
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    const-string v0, "Too many unique user properties are set. Ignoring user property"

    .line 1035
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzi()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v2

    .line 1036
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/v7;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzep;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/v7;->e:Ljava/lang/Object;

    .line 1037
    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1038
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    .line 1039
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzaa:Lcom/google/android/gms/measurement/internal/w7;

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1040
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Lcom/google/android/gms/measurement/internal/w7;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1041
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->c0()V

    return-void

    :catchall_0
    move-exception p1

    .line 1042
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/c;->c0()V

    .line 1043
    throw p1
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const-string v0, "app_id=?"

    .line 952
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzw:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 953
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzx:Ljava/util/List;

    .line 954
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzw:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 955
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 956
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 957
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/k4;->zzc()V

    .line 958
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/o7;->zzaj()V

    .line 959
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v6, "apps"

    .line 960
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v5

    const-string v5, "events"

    .line 961
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "user_attributes"

    .line 962
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "conditional_properties"

    .line 963
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "raw_events"

    .line 964
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "raw_events_metadata"

    .line 965
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "queue"

    .line 966
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "audience_filter_values"

    .line 967
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "main_event_params"

    .line 968
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "default_event_params"

    .line 969
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v6, v0

    if-lez v6, :cond_1

    .line 970
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/k4;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 971
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/k4;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    .line 972
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 973
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error resetting analytics data. appId, error"

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 974
    :cond_1
    :goto_0
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-eqz v0, :cond_2

    .line 975
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzki;->zzb(Lcom/google/android/gms/measurement/internal/zzn;)V

    :cond_2
    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzw;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1045
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzki;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1046
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/measurement/internal/zzw;Lcom/google/android/gms/measurement/internal/zzn;)V

    :cond_0
    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzw;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1047
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1049
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1052
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzx()V

    .line 1053
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzn()V

    .line 1054
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzki;->zze(Lcom/google/android/gms/measurement/internal/zzn;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1055
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-nez v0, :cond_1

    .line 1056
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzki;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/i3;

    return-void

    .line 1057
    :cond_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzw;-><init>(Lcom/google/android/gms/measurement/internal/zzw;)V

    const/4 p1, 0x0

    .line 1058
    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/zzw;->zze:Z

    .line 1059
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c;->zze()V

    .line 1060
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/c;->U(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzw;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1061
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1062
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v2

    .line 1063
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    .line 1064
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfv;->zzi()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v4

    .line 1065
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzep;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Ljava/lang/String;

    .line 1066
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 1067
    iget-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzw;->zze:Z

    if-eqz v3, :cond_3

    .line 1068
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Ljava/lang/String;

    .line 1069
    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzd:J

    iput-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzd:J

    .line 1070
    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzh:J

    iput-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzh:J

    .line 1071
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzf:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzf:Ljava/lang/String;

    .line 1072
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzi:Lcom/google/android/gms/measurement/internal/zzar;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzi:Lcom/google/android/gms/measurement/internal/zzar;

    .line 1073
    iput-boolean v3, v0, Lcom/google/android/gms/measurement/internal/zzw;->zze:Z

    .line 1074
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-wide v6, v4, Lcom/google/android/gms/measurement/internal/zzkr;->zzb:J

    .line 1075
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkr;->zza()Ljava/lang/Object;

    move-result-object v8

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkr;->zze:Ljava/lang/String;

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    goto :goto_0

    .line 1076
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzf:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1077
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzd:J

    .line 1078
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkr;->zze:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 1079
    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzw;->zze:Z

    const/4 p1, 0x1

    .line 1080
    :cond_4
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzw;->zze:Z

    if-eqz v1, :cond_6

    .line 1081
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 1082
    new-instance v9, Lcom/google/android/gms/measurement/internal/v7;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzkr;->zzb:J

    .line 1083
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkr;->zza()Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/v7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 1084
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/c;->z(Lcom/google/android/gms/measurement/internal/v7;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1085
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    .line 1086
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzer;->zzv()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    .line 1087
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfv;->zzi()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v4

    .line 1088
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/v7;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzep;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/v7;->e:Ljava/lang/Object;

    .line 1089
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1090
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    .line 1091
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    .line 1092
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1093
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfv;->zzi()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v4

    .line 1094
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/v7;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzep;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/v7;->e:Ljava/lang/Object;

    .line 1095
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    if-eqz p1, :cond_6

    .line 1096
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzi:Lcom/google/android/gms/measurement/internal/zzar;

    if-eqz p1, :cond_6

    .line 1097
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzar;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzi:Lcom/google/android/gms/measurement/internal/zzar;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzd:J

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Lcom/google/android/gms/measurement/internal/zzar;J)V

    .line 1098
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzki;->zzc(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 1099
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/c;->zza(Lcom/google/android/gms/measurement/internal/zzw;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1100
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p1

    .line 1101
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zzv()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    .line 1102
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzi()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v2

    .line 1103
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzep;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 1104
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkr;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 1105
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 1106
    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p1

    .line 1107
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    .line 1108
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1109
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzi()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v2

    .line 1110
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzep;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 1111
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkr;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 1112
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1113
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1114
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->c0()V

    return-void

    :catchall_0
    move-exception p1

    .line 1115
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/c;->c0()V

    .line 1116
    throw p1
.end method

.method final zza(Ljava/lang/Runnable;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 917
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzx()V

    .line 918
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzo:Ljava/util/List;

    if-nez v0, :cond_0

    .line 919
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzo:Ljava/util/List;

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 857
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzx()V

    .line 858
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzn()V

    .line 859
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, v0, [B

    .line 860
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    .line 861
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    const-string v2, "onConfigFetched. Response size"

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 862
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c;->zze()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 863
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/c;->O(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v1

    const/16 v2, 0xc8

    const/16 v3, 0x130

    const/4 v4, 0x1

    if-eq p2, v2, :cond_1

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_1

    if-ne p2, v3, :cond_2

    :cond_1
    if-nez p3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 864
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p2

    .line 865
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    .line 866
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    const/16 v5, 0x194

    if-nez v2, :cond_8

    if-ne p2, v5, :cond_4

    goto :goto_2

    .line 867
    :cond_4
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzfv;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p4

    .line 868
    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/measurement/internal/i3;->N(J)V

    .line 869
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p4

    invoke-virtual {p4, v1}, Lcom/google/android/gms/measurement/internal/c;->u(Lcom/google/android/gms/measurement/internal/i3;)V

    .line 870
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p4

    .line 871
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 872
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzc()Lcom/google/android/gms/measurement/internal/zzfp;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzfp;->zzc(Ljava/lang/String;)V

    .line 873
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p1

    .line 874
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/m3;->e:Lcom/google/android/gms/measurement/internal/zzfh;

    .line 875
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    .line 876
    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzfh;->zza(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_6

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :cond_6
    :goto_1
    if-eqz v4, :cond_7

    .line 877
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p1

    .line 878
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/m3;->f:Lcom/google/android/gms/measurement/internal/zzfh;

    .line 879
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    .line 880
    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzfh;->zza(J)V

    .line 881
    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzab()V

    goto/16 :goto_7

    :cond_8
    :goto_2
    const/4 p3, 0x0

    if-eqz p5, :cond_9

    const-string v2, "Last-Modified"

    .line 882
    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_3

    :cond_9
    move-object p5, p3

    :goto_3
    if-eqz p5, :cond_a

    .line 883
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 884
    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_4

    :cond_a
    move-object p5, p3

    :goto_4
    if-eq p2, v5, :cond_c

    if-ne p2, v3, :cond_b

    goto :goto_5

    .line 885
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzc()Lcom/google/android/gms/measurement/internal/zzfp;

    move-result-object p3

    invoke-virtual {p3, p1, p4, p5}, Lcom/google/android/gms/measurement/internal/zzfp;->zza(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_d

    .line 886
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->c0()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 887
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzr:Z

    .line 888
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzac()V

    return-void

    .line 889
    :cond_c
    :goto_5
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzc()Lcom/google/android/gms/measurement/internal/zzfp;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/google/android/gms/measurement/internal/zzfp;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzca$zzb;

    move-result-object p5

    if-nez p5, :cond_d

    .line 890
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzc()Lcom/google/android/gms/measurement/internal/zzfp;

    move-result-object p5

    invoke-virtual {p5, p1, p3, p3}, Lcom/google/android/gms/measurement/internal/zzfp;->zza(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p3, :cond_d

    .line 891
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->c0()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 892
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzr:Z

    .line 893
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzac()V

    return-void

    .line 894
    :cond_d
    :try_start_5
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    .line 895
    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/i3;->K(J)V

    .line 896
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/google/android/gms/measurement/internal/c;->u(Lcom/google/android/gms/measurement/internal/i3;)V

    if-ne p2, v5, :cond_e

    .line 897
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p2

    .line 898
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzer;->zzj()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    .line 899
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 900
    :cond_e
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p1

    .line 901
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    .line 902
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    .line 903
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 904
    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 905
    :goto_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzd()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeu;->zze()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzaa()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 906
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzo()V

    goto :goto_7

    .line 907
    :cond_f
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzab()V

    .line 908
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 909
    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->c0()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 910
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzr:Z

    .line 911
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzac()V

    return-void

    :catchall_0
    move-exception p1

    .line 912
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/c;->c0()V

    .line 913
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    .line 914
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzr:Z

    .line 915
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzac()V

    .line 916
    throw p1
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzad;)V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 49
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    .line 51
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzat;->zzci:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzx()V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzn()V

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzz:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    .line 56
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/k4;->zzs()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzat;->zzci:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/k4;->zzc()V

    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o7;->zzaj()V

    .line 61
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    .line 62
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzad;->zza()Ljava/lang/String;

    move-result-object p2

    const-string v2, "consent_state"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v2, "consent_settings"

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 65
    invoke-virtual {p2, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p2, v1, v3

    if-nez p2, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/k4;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p2

    .line 67
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p2

    const-string v1, "Failed to insert/update consent setting (got -1). appId"

    .line 68
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 69
    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p2

    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/k4;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 72
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Error storing consent setting. appId, error"

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method final zza(Z)V
    .locals 0

    .line 1188
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzab()V

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/measurement/internal/zzy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    return-object v0
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzkr;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 49
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzx()V

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzn()V

    .line 51
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzki;->zze(Lcom/google/android/gms/measurement/internal/zzn;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-nez v0, :cond_1

    .line 53
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzki;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/i3;

    return-void

    .line 54
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    const-string v1, "_npa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->zzs:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 55
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zzv()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    const-string v0, "Falling back to manifest metadata value for ad personalization"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    .line 57
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkr;

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 59
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    .line 60
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->zzs:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v2, "_npa"

    const-string v6, "auto"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/measurement/internal/zzkr;Lcom/google/android/gms/measurement/internal/zzn;)V

    return-void

    .line 62
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzer;->zzv()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzi()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v1

    .line 65
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzep;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Removing user property"

    .line 66
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->zze()V

    .line 68
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzki;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/i3;

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/measurement/internal/c;->Q(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/c;->a()V

    .line 71
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p2

    .line 72
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzer;->zzv()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p2

    const-string v0, "User property removed"

    .line 73
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzi()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v1

    .line 74
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzep;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->c0()V

    return-void

    :catchall_0
    move-exception p1

    .line 77
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/c;->c0()V

    .line 78
    throw p1
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 21
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_sysu"

    const-string v4, "_sys"

    const-string v5, "_pfo"

    const-string v6, "_uwa"

    const-string v0, "app_id=?"

    .line 79
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzx()V

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzn()V

    .line 81
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzki;->zze(Lcom/google/android/gms/measurement/internal/zzn;)Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/c;->O(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_1

    .line 85
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/i3;->A()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    .line 86
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 87
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/i3;->K(J)V

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/google/android/gms/measurement/internal/c;->u(Lcom/google/android/gms/measurement/internal/i3;)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzc()Lcom/google/android/gms/measurement/internal/zzfp;

    move-result-object v7

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzfp;->zzd(Ljava/lang/String;)V

    .line 90
    :cond_1
    iget-boolean v7, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-nez v7, :cond_2

    .line 91
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzki;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/i3;

    return-void

    .line 92
    :cond_2
    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzm:J

    cmp-long v7, v10, v8

    if-nez v7, :cond_3

    .line 93
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v7

    .line 94
    invoke-interface {v7}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v10

    .line 95
    :cond_3
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zzw()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    .line 96
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzal;->zzh()V

    .line 97
    iget v7, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzn:I

    const/4 v15, 0x1

    if-eqz v7, :cond_4

    if-eq v7, v15, :cond_4

    .line 98
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v12

    .line 99
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 100
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 101
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v14, "Incorrect app type, assuming installed app. appId, appType"

    .line 102
    invoke-virtual {v12, v14, v13, v7}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x0

    .line 103
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/c;->zze()V

    .line 104
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-string v14, "_npa"

    .line 105
    invoke-virtual {v12, v13, v14}, Lcom/google/android/gms/measurement/internal/c;->T(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/v7;

    move-result-object v14

    if-eqz v14, :cond_6

    const-string v12, "auto"

    .line 106
    iget-object v13, v14, Lcom/google/android/gms/measurement/internal/v7;->b:Ljava/lang/String;

    .line 107
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_0

    :cond_5
    move-object/from16 v18, v3

    const/4 v3, 0x1

    goto :goto_2

    .line 108
    :cond_6
    :goto_0
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzs:Ljava/lang/Boolean;

    if-eqz v12, :cond_9

    .line 109
    new-instance v13, Lcom/google/android/gms/measurement/internal/zzkr;

    const-string v18, "_npa"

    .line 110
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzs:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_7

    const-wide/16 v19, 0x1

    goto :goto_1

    :cond_7
    move-wide/from16 v19, v8

    :goto_1
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v20, "auto"

    const-wide/16 v8, 0x1

    move-object v12, v13

    move-object v8, v13

    move-object/from16 v13, v18

    move-object/from16 v18, v3

    move-object v9, v14

    const/4 v3, 0x1

    move-wide v14, v10

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    if-eqz v9, :cond_8

    .line 111
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/v7;->e:Ljava/lang/Object;

    iget-object v12, v8, Lcom/google/android/gms/measurement/internal/zzkr;->zzc:Ljava/lang/Long;

    .line 112
    invoke-virtual {v9, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 113
    :cond_8
    invoke-virtual {v1, v8, v2}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/measurement/internal/zzkr;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_2

    :cond_9
    move-object/from16 v18, v3

    move-object v9, v14

    const/4 v3, 0x1

    if-eqz v9, :cond_a

    .line 114
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzkr;

    const-string v13, "_npa"

    const/16 v16, 0x0

    const-string v17, "auto"

    move-object v12, v8

    move-wide v14, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1, v8, v2}, Lcom/google/android/gms/measurement/internal/zzki;->zzb(Lcom/google/android/gms/measurement/internal/zzkr;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 116
    :cond_a
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/c;->O(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 117
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    .line 118
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    .line 119
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/i3;->A()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    .line 120
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/i3;->D()Ljava/lang/String;

    move-result-object v15

    .line 121
    invoke-static {v12, v13, v14, v15}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 122
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v12

    .line 123
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v12

    const-string v13, "New GMP App Id passed in. Removing cached database data. appId"

    .line 124
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/i3;->t()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 125
    invoke-virtual {v12, v13, v14}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v12

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/i3;->t()Ljava/lang/String;

    move-result-object v8

    .line 127
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/o7;->zzaj()V

    .line 128
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/k4;->zzc()V

    .line 129
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :try_start_1
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/c;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    new-array v14, v3, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    const-string v9, "events"

    .line 131
    invoke-virtual {v13, v9, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    add-int/2addr v9, v15

    const-string v15, "user_attributes"

    .line 132
    invoke-virtual {v13, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v9, v15

    const-string v15, "conditional_properties"

    .line 133
    invoke-virtual {v13, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v9, v15

    const-string v15, "apps"

    .line 134
    invoke-virtual {v13, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v9, v15

    const-string v15, "raw_events"

    .line 135
    invoke-virtual {v13, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v9, v15

    const-string v15, "raw_events_metadata"

    .line 136
    invoke-virtual {v13, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v9, v15

    const-string v15, "event_filters"

    .line 137
    invoke-virtual {v13, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v9, v15

    const-string v15, "property_filters"

    .line 138
    invoke-virtual {v13, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v9, v15

    const-string v15, "audience_filter_values"

    .line 139
    invoke-virtual {v13, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v9, v15

    const-string v15, "consent_settings"

    .line 140
    invoke-virtual {v13, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v9, v0

    if-lez v9, :cond_b

    .line 141
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/k4;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    const-string v13, "Deleted application data. app, records"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v13, v8, v9}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 142
    :try_start_2
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/k4;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v9

    .line 143
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v9

    const-string v12, "Error deleting application data. appId, error"

    .line 144
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v9, v12, v8, v0}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    :goto_3
    const/4 v8, 0x0

    :cond_c
    if-eqz v8, :cond_10

    .line 145
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/i3;->V()J

    move-result-wide v12

    const-wide/32 v14, -0x80000000

    cmp-long v0, v12, v14

    if-eqz v0, :cond_d

    .line 146
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/i3;->V()J

    move-result-wide v12

    move-object v9, v4

    iget-wide v3, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzj:J

    cmp-long v0, v12, v3

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_4

    :cond_d
    move-object v9, v4

    :cond_e
    const/4 v0, 0x0

    .line 147
    :goto_4
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/i3;->V()J

    move-result-wide v3

    cmp-long v12, v3, v14

    if-nez v12, :cond_f

    .line 148
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/i3;->T()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 149
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/i3;->T()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const/4 v14, 0x1

    goto :goto_5

    :cond_f
    const/4 v14, 0x0

    :goto_5
    or-int/2addr v0, v14

    if-eqz v0, :cond_11

    .line 150
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_pv"

    .line 151
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/i3;->T()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzar;

    const-string v13, "_au"

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzam;

    invoke-direct {v14, v0}, Lcom/google/android/gms/measurement/internal/zzam;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v3

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzam;Ljava/lang/String;J)V

    .line 153
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_6

    :cond_10
    move-object v9, v4

    .line 154
    :cond_11
    :goto_6
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzki;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/i3;

    if-nez v7, :cond_12

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-string v4, "_f"

    .line 156
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/c;->j(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/h;

    move-result-object v0

    goto :goto_7

    :cond_12
    const/4 v3, 0x1

    if-ne v7, v3, :cond_13

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const-string v4, "_v"

    .line 158
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/c;->j(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/h;

    move-result-object v0

    goto :goto_7

    :cond_13
    const/4 v0, 0x0

    :goto_7
    if-nez v0, :cond_24

    const-wide/32 v3, 0x36ee80

    .line 159
    div-long v12, v10, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    mul-long v12, v12, v3

    const-string v0, "_dac"

    const-string v3, "_r"

    const-string v4, "_c"

    const-string v8, "_et"

    if-nez v7, :cond_1f

    .line 160
    :try_start_3
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzkr;

    const-string v14, "_fot"

    .line 161
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v17, "auto"

    move-object v12, v7

    move-object v13, v14

    move-wide v14, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1, v7, v2}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/measurement/internal/zzkr;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 163
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzx()V

    .line 164
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    .line 165
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zze()Lcom/google/android/gms/measurement/internal/zzfi;

    move-result-object v7

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 166
    invoke-virtual {v7, v12}, Lcom/google/android/gms/measurement/internal/zzfi;->zza(Ljava/lang/String;)V

    .line 167
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzx()V

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzn()V

    .line 169
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v12, 0x1

    .line 170
    invoke-virtual {v7, v4, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 171
    invoke-virtual {v7, v3, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v3, 0x0

    .line 172
    invoke-virtual {v7, v6, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 173
    invoke-virtual {v7, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 174
    invoke-virtual {v7, v9, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v14, v18

    .line 175
    invoke-virtual {v7, v14, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 176
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v3

    .line 177
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzat;->zzas:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v3, v4, v12}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-wide/16 v3, 0x1

    .line 178
    invoke-virtual {v7, v8, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_8

    :cond_14
    const-wide/16 v3, 0x1

    .line 179
    :goto_8
    iget-boolean v12, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzq:Z

    if-eqz v12, :cond_15

    .line 180
    invoke-virtual {v7, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 181
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 182
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/k4;->zzc()V

    .line 184
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o7;->zzaj()V

    const-string v4, "first_open_count"

    .line 185
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/c;->e0(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 186
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzm()Landroid/content/Context;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_17

    .line 188
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    const-string v6, "PackageManager is null, first open report might be inaccurate. appId"

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 190
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 191
    invoke-virtual {v0, v6, v9}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_16
    :goto_9
    const-wide/16 v12, 0x0

    goto/16 :goto_10

    .line 192
    :cond_17
    :try_start_4
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzm()Landroid/content/Context;

    move-result-object v0

    .line 193
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_a

    :catch_1
    move-exception v0

    .line 194
    :try_start_5
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v12

    .line 195
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v12

    const-string v13, "Package info is null, first open report might be inaccurate. appId"

    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 196
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 197
    invoke-virtual {v12, v13, v15, v0}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_1c

    .line 198
    iget-wide v12, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v15, 0x0

    cmp-long v17, v12, v15

    if-eqz v17, :cond_1c

    move-object/from16 v18, v14

    .line 199
    iget-wide v14, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v12, v14

    if-eqz v0, :cond_1a

    .line 200
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    .line 201
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzat;->zzbm:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-wide/16 v12, 0x0

    cmp-long v0, v3, v12

    if-nez v0, :cond_19

    const-wide/16 v12, 0x1

    .line 202
    invoke-virtual {v7, v6, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_b

    :cond_18
    const-wide/16 v12, 0x1

    .line 203
    invoke-virtual {v7, v6, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_19
    :goto_b
    const/4 v14, 0x0

    goto :goto_c

    :cond_1a
    const/4 v14, 0x1

    .line 204
    :goto_c
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkr;

    const-string v13, "_fi"

    if-eqz v14, :cond_1b

    const-wide/16 v14, 0x1

    goto :goto_d

    :cond_1b
    const-wide/16 v14, 0x0

    .line 205
    :goto_d
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v17, "auto"

    move-object v12, v0

    move-object/from16 v6, v18

    move-wide v14, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/measurement/internal/zzkr;Lcom/google/android/gms/measurement/internal/zzn;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_e

    :cond_1c
    move-object v6, v14

    .line 207
    :goto_e
    :try_start_6
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzm()Landroid/content/Context;

    move-result-object v0

    .line 208
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_f

    :catch_2
    move-exception v0

    .line 209
    :try_start_7
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v12

    .line 210
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v12

    const-string v13, "Application info is null, first open report might be inaccurate. appId"

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 211
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 212
    invoke-virtual {v12, v13, v14, v0}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_16

    .line 213
    iget v12, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v13, 0x1

    and-int/2addr v12, v13

    if-eqz v12, :cond_1d

    const-wide/16 v12, 0x1

    .line 214
    invoke-virtual {v7, v9, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 215
    :cond_1d
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_16

    const-wide/16 v12, 0x1

    .line 216
    invoke-virtual {v7, v6, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_9

    :goto_10
    cmp-long v0, v3, v12

    if-ltz v0, :cond_1e

    .line 217
    invoke-virtual {v7, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 218
    :cond_1e
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzar;

    const-string v13, "_f"

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzam;

    invoke-direct {v14, v7}, Lcom/google/android/gms/measurement/internal/zzam;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v0

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzam;Ljava/lang/String;J)V

    .line 219
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzki;->zzb(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_12

    :cond_1f
    const/4 v5, 0x1

    if-ne v7, v5, :cond_22

    .line 220
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzkr;

    const-string v6, "_fvt"

    .line 221
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v17, "auto"

    move-object v12, v5

    move-object v13, v6

    move-wide v14, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/measurement/internal/zzkr;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 223
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzx()V

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzn()V

    .line 225
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v6, 0x1

    .line 226
    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 227
    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 228
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v3

    .line 229
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzat;->zzas:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v3

    if-eqz v3, :cond_20

    const-wide/16 v3, 0x1

    .line 230
    invoke-virtual {v5, v8, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_11

    :cond_20
    const-wide/16 v3, 0x1

    .line 231
    :goto_11
    iget-boolean v6, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzq:Z

    if-eqz v6, :cond_21

    .line 232
    invoke-virtual {v5, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 233
    :cond_21
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzar;

    const-string v13, "_v"

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzam;

    invoke-direct {v14, v5}, Lcom/google/android/gms/measurement/internal/zzam;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v0

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzam;Ljava/lang/String;J)V

    .line 234
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzki;->zzb(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 235
    :cond_22
    :goto_12
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    .line 236
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzat;->zzat:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 237
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v3, 0x1

    .line 238
    invoke-virtual {v0, v8, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 239
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v3

    .line 240
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzat;->zzas:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v3

    if-eqz v3, :cond_23

    const-string v3, "_fr"

    const-wide/16 v4, 0x1

    .line 241
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 242
    :cond_23
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzar;

    const-string v13, "_e"

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzam;

    invoke-direct {v14, v0}, Lcom/google/android/gms/measurement/internal/zzam;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v3

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzam;Ljava/lang/String;J)V

    .line 243
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzki;->zzb(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_13

    .line 244
    :cond_24
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzn;->zzi:Z

    if-eqz v0, :cond_25

    .line 245
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 246
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzar;

    const-string v13, "_cd"

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzam;

    invoke-direct {v14, v0}, Lcom/google/android/gms/measurement/internal/zzam;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v3

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzam;Ljava/lang/String;J)V

    .line 247
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzki;->zzb(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 248
    :cond_25
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->a()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->c0()V

    return-void

    :catchall_0
    move-exception v0

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c;->c0()V

    .line 251
    throw v0
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzw;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 286
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzki;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzki;->zzb(Lcom/google/android/gms/measurement/internal/zzw;Lcom/google/android/gms/measurement/internal/zzn;)V

    :cond_0
    return-void
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzw;Lcom/google/android/gms/measurement/internal/zzn;)V
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 288
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 290
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzx()V

    .line 293
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzn()V

    .line 294
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzki;->zze(Lcom/google/android/gms/measurement/internal/zzn;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 295
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    if-nez v0, :cond_1

    .line 296
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzki;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/i3;

    return-void

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->zze()V

    .line 298
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzki;->zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/i3;

    .line 299
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/c;->U(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzw;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 300
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    .line 301
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzer;->zzv()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    const-string v2, "Removing conditional user property"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    .line 302
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfv;->zzi()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v4

    .line 303
    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzep;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 304
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 305
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/c;->W(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzw;->zze:Z

    if-eqz v1, :cond_2

    .line 307
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/c;->Q(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzw;->zzk:Lcom/google/android/gms/measurement/internal/zzar;

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    .line 309
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzar;->zzb:Lcom/google/android/gms/measurement/internal/zzam;

    if-eqz v1, :cond_3

    .line 310
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzam;->zzb()Landroid/os/Bundle;

    move-result-object v2

    :cond_3
    move-object v3, v2

    .line 311
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v1

    .line 312
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzw;->zzk:Lcom/google/android/gms/measurement/internal/zzar;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzar;->zza:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Ljava/lang/String;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzar;->zzd:J

    const/4 p1, 0x1

    const/4 v8, 0x0

    .line 313
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlq;->zzb()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 314
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    .line 315
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzat;->zzcl:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    const/4 v9, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_0
    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v5

    move-wide v5, v6

    move v7, p1

    .line 316
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZZ)Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    .line 317
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzki;->zzc(Lcom/google/android/gms/measurement/internal/zzar;Lcom/google/android/gms/measurement/internal/zzn;)V

    goto :goto_1

    .line 318
    :cond_5
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object p2

    .line 319
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzw;->zza:Ljava/lang/String;

    .line 320
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 321
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzi()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v2

    .line 322
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzw;->zzc:Lcom/google/android/gms/measurement/internal/zzkr;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkr;->zza:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzep;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 323
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 324
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c;->c0()V

    return-void

    :catchall_0
    move-exception p1

    .line 326
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/c;->c0()V

    .line 327
    throw p1
.end method

.method final zzc(Lcom/google/android/gms/measurement/internal/zzn;)Lcom/google/android/gms/measurement/internal/i3;
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 361
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzx()V

    .line 362
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzn()V

    .line 363
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 365
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/c;->O(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 366
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzad;->zza:Lcom/google/android/gms/measurement/internal/zzad;

    .line 367
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 368
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v2

    .line 369
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzat;->zzci:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 370
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 371
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzw:Ljava/lang/String;

    .line 372
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzad;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzad;->zzb(Lcom/google/android/gms/measurement/internal/zzad;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v1

    .line 373
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 374
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v2

    .line 375
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzat;->zzci:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 376
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzad;->zzc()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, ""

    goto :goto_1

    .line 377
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzj:Lcom/google/android/gms/measurement/internal/zzjo;

    .line 378
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzjo;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 379
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzng;->zzb()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 380
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v3

    .line 381
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzat;->zzbn:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v3

    if-eqz v3, :cond_11

    if-nez v0, :cond_5

    .line 382
    new-instance v0, Lcom/google/android/gms/measurement/internal/i3;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/i3;-><init>(Lcom/google/android/gms/measurement/internal/zzfv;Ljava/lang/String;)V

    .line 383
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 384
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v3

    .line 385
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzat;->zzci:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 386
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzad;->zze()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 387
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/measurement/internal/zzad;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/i3;->c(Ljava/lang/String;)V

    .line 388
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzad;->zzc()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 389
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/i3;->C(Ljava/lang/String;)V

    goto :goto_2

    .line 390
    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/i3;->c(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/i3;->C(Ljava/lang/String;)V

    goto :goto_2

    .line 392
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 393
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v3

    .line 394
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzat;->zzci:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 395
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzad;->zzc()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 396
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->J()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 397
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/i3;->C(Ljava/lang/String;)V

    .line 398
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 399
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v2

    .line 400
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzat;->zzci:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 401
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/measurement/internal/zzad;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/i3;->c(Ljava/lang/String;)V

    goto :goto_2

    .line 402
    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/i3;->c(Ljava/lang/String;)V

    .line 403
    :cond_8
    :goto_2
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/i3;->r(Ljava/lang/String;)V

    .line 404
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/i3;->v(Ljava/lang/String;)V

    .line 405
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznt;->zzb()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 406
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v1

    .line 407
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->t()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzat;->zzbi:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 408
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/i3;->z(Ljava/lang/String;)V

    .line 409
    :cond_9
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzk:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 410
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/i3;->F(Ljava/lang/String;)V

    .line 411
    :cond_a
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zze:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_b

    .line 412
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/i3;->y(J)V

    .line 413
    :cond_b
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 414
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/i3;->I(Ljava/lang/String;)V

    .line 415
    :cond_c
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzj:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/i3;->u(J)V

    .line 416
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 417
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/i3;->L(Ljava/lang/String;)V

    .line 418
    :cond_d
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzf:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/i3;->B(J)V

    .line 419
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzh:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/i3;->e(Z)V

    .line 420
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 421
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/i3;->O(Ljava/lang/String;)V

    .line 422
    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v1

    .line 423
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzat;->zzbx:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 424
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzl:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/i3;->c0(J)V

    .line 425
    :cond_f
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzo:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/i3;->s(Z)V

    .line 426
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzp:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/i3;->w(Z)V

    .line 427
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzs:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/i3;->b(Ljava/lang/Boolean;)V

    .line 428
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zzt:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/i3;->E(J)V

    .line 429
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->f()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 430
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/c;->u(Lcom/google/android/gms/measurement/internal/i3;)V

    :cond_10
    return-object v0

    .line 431
    :cond_11
    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/measurement/internal/zzn;Lcom/google/android/gms/measurement/internal/i3;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()Lcom/google/android/gms/measurement/internal/zzfp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzb:Lcom/google/android/gms/measurement/internal/zzfp;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzki;->zzb(Lcom/google/android/gms/measurement/internal/o7;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzb:Lcom/google/android/gms/measurement/internal/zzfp;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/measurement/internal/zzeu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzc:Lcom/google/android/gms/measurement/internal/zzeu;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzki;->zzb(Lcom/google/android/gms/measurement/internal/o7;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzc:Lcom/google/android/gms/measurement/internal/zzeu;

    return-object v0
.end method

.method final zzd(Lcom/google/android/gms/measurement/internal/zzn;)Ljava/lang/String;
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzp()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/google/android/gms/measurement/internal/r7;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/r7;-><init>(Lcom/google/android/gms/measurement/internal/zzki;Lcom/google/android/gms/measurement/internal/zzn;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x7530

    .line 6
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzn;->zza:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to get app instance id. appId"

    .line 10
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zze()Lcom/google/android/gms/measurement/internal/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzd:Lcom/google/android/gms/measurement/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzki;->zzb(Lcom/google/android/gms/measurement/internal/o7;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzd:Lcom/google/android/gms/measurement/internal/c;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/measurement/internal/a8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzg:Lcom/google/android/gms/measurement/internal/a8;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzki;->zzb(Lcom/google/android/gms/measurement/internal/o7;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzg:Lcom/google/android/gms/measurement/internal/a8;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/measurement/internal/s5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzi:Lcom/google/android/gms/measurement/internal/s5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzki;->zzb(Lcom/google/android/gms/measurement/internal/o7;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzi:Lcom/google/android/gms/measurement/internal/s5;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/measurement/internal/zzks;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzh:Lcom/google/android/gms/measurement/internal/zzks;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzki;->zzb(Lcom/google/android/gms/measurement/internal/o7;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzh:Lcom/google/android/gms/measurement/internal/zzks;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/measurement/internal/zzjo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzj:Lcom/google/android/gms/measurement/internal/zzjo;

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/measurement/internal/zzep;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzi()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v0

    return-object v0
.end method

.method public final zzk()Lcom/google/android/gms/measurement/internal/zzkw;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzh()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    return-object v0
.end method

.method public final zzl()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final zzm()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzm()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zzn()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzl:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzo()V
    .locals 17
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzx()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzn()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzt:Z

    const/4 v2, 0x0

    .line 4
    :try_start_0
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzv()Lcom/google/android/gms/measurement/internal/zzio;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzaf()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_0

    .line 5
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzer;->zzh()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    const-string v3, "Upload data called on the client side before use of service was decided"

    .line 7
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzt:Z

    .line 9
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzac()V

    return-void

    .line 10
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    const-string v3, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzt:Z

    .line 14
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzac()V

    return-void

    .line 15
    :cond_1
    :try_start_2
    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzn:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    .line 16
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzab()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzt:Z

    .line 18
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzac()V

    return-void

    .line 19
    :cond_2
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzx()V

    .line 20
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzw:Ljava/util/List;

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 21
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    const-string v3, "Uploading requested multiple times"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzt:Z

    .line 24
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzac()V

    return-void

    .line 25
    :cond_4
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzd()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeu;->zze()Z

    move-result v3

    if-nez v3, :cond_5

    .line 26
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    const-string v3, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    .line 28
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzab()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 29
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzt:Z

    .line 30
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzac()V

    return-void

    .line 31
    :cond_5
    :try_start_5
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzl()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    .line 32
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    .line 33
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v7

    .line 34
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzat;->zzap:Lcom/google/android/gms/measurement/internal/zzeg;

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/zzy;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)I

    move-result v7

    .line 35
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzy;->zzj()J

    move-result-wide v10

    sub-long v10, v3, v10

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_6

    .line 36
    invoke-direct {v1, v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/String;J)Z

    move-result v12

    if-eqz v12, :cond_6

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 37
    :cond_6
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v7

    .line 38
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/m3;->d:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfh;->zza()J

    move-result-wide v7

    cmp-long v10, v7, v5

    if-eqz v10, :cond_7

    .line 39
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v5

    .line 40
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzer;->zzv()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    const-string v6, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v7, v3, v7

    .line 41
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 42
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/c;->c()Ljava/lang/String;

    move-result-object v5

    .line 44
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-wide/16 v7, -0x1

    if-nez v6, :cond_1d

    .line 45
    iget-wide v10, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzy:J

    cmp-long v6, v10, v7

    if-nez v6, :cond_8

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/c;->k0()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzy:J

    .line 47
    :cond_8
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v6

    .line 48
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzat;->zzf:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/measurement/internal/zzy;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)I

    move-result v6

    .line 49
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v7

    .line 50
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzat;->zzg:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v7, v5, v8}, Lcom/google/android/gms/measurement/internal/zzy;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v8

    invoke-virtual {v8, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/c;->p(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v6

    .line 52
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1e

    .line 53
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 54
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v7

    .line 55
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzat;->zzci:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 56
    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzad;->zzc()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 57
    :cond_9
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 58
    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 59
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzad()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 60
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzad()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_b
    move-object v7, v9

    :goto_2
    if-eqz v7, :cond_d

    const/4 v8, 0x0

    .line 61
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_d

    .line 62
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 63
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzad()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 64
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzad()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 65
    invoke-interface {v6, v2, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    goto :goto_4

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 66
    :cond_d
    :goto_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zzf;->zzb()Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;

    move-result-object v7

    .line 67
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 68
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v11

    .line 70
    invoke-virtual {v11, v5}, Lcom/google/android/gms/measurement/internal/zzy;->zzh(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 71
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 72
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v11

    .line 73
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzat;->zzci:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 74
    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzad;->zzc()Z

    move-result v11

    if-eqz v11, :cond_f

    :cond_e
    const/4 v11, 0x1

    goto :goto_5

    :cond_f
    const/4 v11, 0x0

    .line 75
    :goto_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 76
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v12

    .line 77
    sget-object v13, Lcom/google/android/gms/measurement/internal/zzat;->zzci:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 78
    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzad;->zzc()Z

    move-result v12

    if-eqz v12, :cond_10

    goto :goto_6

    :cond_10
    const/4 v12, 0x0

    goto :goto_7

    :cond_11
    :goto_6
    const/4 v12, 0x1

    .line 79
    :goto_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v13

    if-eqz v13, :cond_13

    .line 80
    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v13

    .line 81
    sget-object v14, Lcom/google/android/gms/measurement/internal/zzat;->zzci:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 82
    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzad;->zze()Z

    move-result v13

    if-eqz v13, :cond_12

    goto :goto_8

    :cond_12
    const/4 v13, 0x0

    goto :goto_9

    :cond_13
    :goto_8
    const/4 v13, 0x1

    :goto_9
    const/4 v14, 0x0

    :goto_a
    if-ge v14, v8, :cond_18

    .line 83
    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    iget-object v15, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    .line 84
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzhz;->zzbn()Lcom/google/android/gms/internal/measurement/zzhz$zza;

    move-result-object v15

    .line 85
    check-cast v15, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 86
    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v10

    const-wide/16 v9, 0x7d35

    .line 87
    invoke-virtual {v15, v9, v10}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzg(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v9

    .line 88
    invoke-virtual {v9, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    move-result-object v9

    .line 89
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzb(Z)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    if-nez v11, :cond_14

    .line 90
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzr()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 91
    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 92
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v9

    .line 93
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzat;->zzci:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzy;->zza(Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v9

    if-eqz v9, :cond_16

    if-nez v12, :cond_15

    .line 94
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzk()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 95
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzl()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    :cond_15
    if-nez v13, :cond_16

    .line 96
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzm()Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 97
    :cond_16
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfv;->zza()Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v9

    .line 98
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzat;->zzaw:Lcom/google/android/gms/measurement/internal/zzeg;

    invoke-virtual {v9, v5, v10}, Lcom/google/android/gms/measurement/internal/zzy;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzeg;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 99
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzgh;->zzbk()[B

    move-result-object v9

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/google/android/gms/measurement/internal/zzks;->zza([B)J

    move-result-wide v9

    invoke-virtual {v15, v9, v10}, Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;->zzl(J)Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;

    .line 101
    :cond_17
    invoke-virtual {v7, v15}, Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzg$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v10, v16

    const/4 v0, 0x1

    const/4 v9, 0x0

    goto/16 :goto_a

    :cond_18
    move-object/from16 v16, v10

    .line 102
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v6

    const/4 v9, 0x2

    .line 103
    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzer;->zza(I)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    move-result-object v6

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzcd$zzf;

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzks;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zzf;)Ljava/lang/String;

    move-result-object v6

    goto :goto_b

    :cond_19
    const/4 v6, 0x0

    .line 105
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzh()Lcom/google/android/gms/measurement/internal/zzks;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzcd$zzf;

    .line 106
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzgh;->zzbk()[B

    move-result-object v14

    .line 107
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzat;->zzp:Lcom/google/android/gms/measurement/internal/zzeg;

    const/4 v0, 0x0

    .line 108
    invoke-virtual {v9, v0}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    check-cast v0, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 110
    :try_start_6
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1a

    const/4 v9, 0x1

    goto :goto_c

    :cond_1a
    const/4 v9, 0x0

    :goto_c
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 112
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzw:Ljava/util/List;

    if-eqz v9, :cond_1b

    .line 113
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v9

    .line 114
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v9

    const-string v10, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)V

    goto :goto_d

    .line 115
    :cond_1b
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v10, v16

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v9, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzw:Ljava/util/List;

    .line 116
    :goto_d
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfv;->zzb()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v9

    .line 117
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/m3;->e:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-virtual {v9, v3, v4}, Lcom/google/android/gms/measurement/internal/zzfh;->zza(J)V

    const-string v3, "?"

    if-lez v8, :cond_1c

    .line 118
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/zzcd$zzf$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzcd$zzg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzcd$zzg;->zzx()Ljava/lang/String;

    move-result-object v3

    .line 119
    :cond_1c
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v4

    .line 120
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v4

    const-string v7, "Uploading data. app, uncompressed size, data"

    array-length v8, v14

    .line 121
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v3, v8, v6}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    .line 122
    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzs:Z

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzd()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v11

    new-instance v3, Lcom/google/android/gms/measurement/internal/p7;

    invoke-direct {v3, v1, v5}, Lcom/google/android/gms/measurement/internal/p7;-><init>(Lcom/google/android/gms/measurement/internal/zzki;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/k4;->zzc()V

    .line 125
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/o7;->zzaj()V

    .line 126
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {v14}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/k4;->zzp()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v4

    new-instance v6, Lcom/google/android/gms/measurement/internal/g3;

    const/4 v15, 0x0

    move-object v10, v6

    move-object v12, v5

    move-object/from16 v16, v3

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/measurement/internal/g3;-><init>(Lcom/google/android/gms/measurement/internal/zzeu;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/e3;)V

    .line 130
    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzfo;->zzc(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_e

    .line 131
    :catch_0
    :try_start_7
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v3

    .line 132
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    const-string v4, "Failed to parse upload URL. Not uploading. appId"

    .line 133
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 134
    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    .line 135
    :cond_1d
    iput-wide v7, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzy:J

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    .line 137
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzy;->zzj()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/c;->m(J)Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zze()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/c;->O(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 140
    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/measurement/internal/i3;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 141
    :cond_1e
    :goto_e
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzt:Z

    .line 142
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzac()V

    return-void

    :catchall_0
    move-exception v0

    .line 143
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzki;->zzt:Z

    .line 144
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzac()V

    .line 145
    throw v0
.end method

.method public final zzp()Lcom/google/android/gms/measurement/internal/zzfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzp()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    return-object v0
.end method

.method public final zzq()Lcom/google/android/gms/measurement/internal/zzer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    return-object v0
.end method

.method final zzr()V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzx()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzn()V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzm:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzm:Z

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzad()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzv:Ljava/nio/channels/FileChannel;

    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/nio/channels/FileChannel;)I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfv;->zzx()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzek;->zzae()I

    move-result v1

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzki;->zzx()V

    if-le v0, v1, :cond_0

    .line 10
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    .line 14
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_2

    .line 15
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzv:Ljava/nio/channels/FileChannel;

    .line 16
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzki;->zza(ILjava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzer;->zzw()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgraded. Previous, current version"

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 20
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfv;->zzq()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzer;->zze()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgrade failed. Previous, current version"

    .line 24
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method final zzs()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzq:I

    return-void
.end method

.method public final zzt()Lcom/google/android/gms/measurement/internal/zzx;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfv;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    return-object v0
.end method

.method final zzu()Lcom/google/android/gms/measurement/internal/zzfv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzki;->zzk:Lcom/google/android/gms/measurement/internal/zzfv;

    return-object v0
.end method
