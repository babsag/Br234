.class public Lcom/google/android/gms/common/GmsSignatureVerifier;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.1.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/RestrictedInheritance;
    allowedOnPath = ".*javatests/com/google/android/gmscore/integ/client/common/robolectric/.*"
    explanation = "Sub classing of GMS Core\'s APIs are restricted to testing fakes."
    link = "go/gmscore-restrictedinheritance"
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/common/b;

.field private static final zzb:Lcom/google/android/gms/common/b;

.field private static final zzc:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/common/s;

    invoke-direct {v0}, Lcom/google/android/gms/common/s;-><init>()V

    const-string v1, "com.google.android.gms"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/s;->d(Ljava/lang/String;)Lcom/google/android/gms/common/s;

    const-wide/32 v1, 0xc2bd840

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/s;->a(J)Lcom/google/android/gms/common/s;

    sget-object v1, Lcom/google/android/gms/common/n;->d:Lcom/google/android/gms/common/l;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/common/l;->b()[B

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/common/n;->b:Lcom/google/android/gms/common/l;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/common/l;->b()[B

    move-result-object v3

    .line 6
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/common/zzag;->zzn(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/s;->c(Ljava/util/List;)Lcom/google/android/gms/common/s;

    sget-object v2, Lcom/google/android/gms/common/n;->c:Lcom/google/android/gms/common/l;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/common/l;->b()[B

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/common/n;->a:Lcom/google/android/gms/common/l;

    .line 9
    invoke-virtual {v4}, Lcom/google/android/gms/common/l;->b()[B

    move-result-object v4

    .line 10
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/common/zzag;->zzn(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v3

    .line 11
    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/s;->b(Ljava/util/List;)Lcom/google/android/gms/common/s;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/common/s;->e()Lcom/google/android/gms/common/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/GmsSignatureVerifier;->zza:Lcom/google/android/gms/common/b;

    new-instance v0, Lcom/google/android/gms/common/s;

    .line 13
    invoke-direct {v0}, Lcom/google/android/gms/common/s;-><init>()V

    const-string v3, "com.android.vending"

    .line 14
    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/s;->d(Ljava/lang/String;)Lcom/google/android/gms/common/s;

    const-wide/32 v3, 0x4e6e200

    .line 15
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/common/s;->a(J)Lcom/google/android/gms/common/s;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/common/l;->b()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/common/zzag;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/s;->c(Ljava/util/List;)Lcom/google/android/gms/common/s;

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/common/l;->b()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/common/zzag;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/s;->b(Ljava/util/List;)Lcom/google/android/gms/common/s;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/common/s;->e()Lcom/google/android/gms/common/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/GmsSignatureVerifier;->zzb:Lcom/google/android/gms/common/b;

    new-instance v0, Ljava/util/HashMap;

    .line 19
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/GmsSignatureVerifier;->zzc:Ljava/util/HashMap;

    return-void
.end method
