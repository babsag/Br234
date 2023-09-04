.class public final Lio/sentry/protocol/Device;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/Device$DeviceOrientation;,
        Lio/sentry/protocol/Device$JsonKeys;,
        Lio/sentry/protocol/Device$Deserializer;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "device"


# instance fields
.field private A:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private B:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private C:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private D:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private E:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private F:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Lio/sentry/protocol/Device$DeviceOrientation;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private m:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private n:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private o:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private p:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private q:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private r:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private s:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private t:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private u:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private v:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private w:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private x:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private y:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private z:Ljava/util/TimeZone;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lio/sentry/protocol/Device;)V
    .locals 2
    .param p1    # Lio/sentry/protocol/Device;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lio/sentry/protocol/Device;->a:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Device;->a:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lio/sentry/protocol/Device;->b:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Device;->b:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lio/sentry/protocol/Device;->c:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Device;->c:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lio/sentry/protocol/Device;->d:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Device;->d:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Lio/sentry/protocol/Device;->e:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Device;->e:Ljava/lang/String;

    .line 8
    iget-object v0, p1, Lio/sentry/protocol/Device;->f:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Device;->f:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lio/sentry/protocol/Device;->i:Ljava/lang/Boolean;

    iput-object v0, p0, Lio/sentry/protocol/Device;->i:Ljava/lang/Boolean;

    .line 10
    iget-object v0, p1, Lio/sentry/protocol/Device;->j:Ljava/lang/Boolean;

    iput-object v0, p0, Lio/sentry/protocol/Device;->j:Ljava/lang/Boolean;

    .line 11
    iget-object v0, p1, Lio/sentry/protocol/Device;->k:Lio/sentry/protocol/Device$DeviceOrientation;

    iput-object v0, p0, Lio/sentry/protocol/Device;->k:Lio/sentry/protocol/Device$DeviceOrientation;

    .line 12
    iget-object v0, p1, Lio/sentry/protocol/Device;->l:Ljava/lang/Boolean;

    iput-object v0, p0, Lio/sentry/protocol/Device;->l:Ljava/lang/Boolean;

    .line 13
    iget-object v0, p1, Lio/sentry/protocol/Device;->m:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/protocol/Device;->m:Ljava/lang/Long;

    .line 14
    iget-object v0, p1, Lio/sentry/protocol/Device;->n:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/protocol/Device;->n:Ljava/lang/Long;

    .line 15
    iget-object v0, p1, Lio/sentry/protocol/Device;->o:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/protocol/Device;->o:Ljava/lang/Long;

    .line 16
    iget-object v0, p1, Lio/sentry/protocol/Device;->p:Ljava/lang/Boolean;

    iput-object v0, p0, Lio/sentry/protocol/Device;->p:Ljava/lang/Boolean;

    .line 17
    iget-object v0, p1, Lio/sentry/protocol/Device;->q:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/protocol/Device;->q:Ljava/lang/Long;

    .line 18
    iget-object v0, p1, Lio/sentry/protocol/Device;->r:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/protocol/Device;->r:Ljava/lang/Long;

    .line 19
    iget-object v0, p1, Lio/sentry/protocol/Device;->s:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/protocol/Device;->s:Ljava/lang/Long;

    .line 20
    iget-object v0, p1, Lio/sentry/protocol/Device;->t:Ljava/lang/Long;

    iput-object v0, p0, Lio/sentry/protocol/Device;->t:Ljava/lang/Long;

    .line 21
    iget-object v0, p1, Lio/sentry/protocol/Device;->u:Ljava/lang/Integer;

    iput-object v0, p0, Lio/sentry/protocol/Device;->u:Ljava/lang/Integer;

    .line 22
    iget-object v0, p1, Lio/sentry/protocol/Device;->v:Ljava/lang/Integer;

    iput-object v0, p0, Lio/sentry/protocol/Device;->v:Ljava/lang/Integer;

    .line 23
    iget-object v0, p1, Lio/sentry/protocol/Device;->w:Ljava/lang/Float;

    iput-object v0, p0, Lio/sentry/protocol/Device;->w:Ljava/lang/Float;

    .line 24
    iget-object v0, p1, Lio/sentry/protocol/Device;->x:Ljava/lang/Integer;

    iput-object v0, p0, Lio/sentry/protocol/Device;->x:Ljava/lang/Integer;

    .line 25
    iget-object v0, p1, Lio/sentry/protocol/Device;->y:Ljava/util/Date;

    iput-object v0, p0, Lio/sentry/protocol/Device;->y:Ljava/util/Date;

    .line 26
    iget-object v0, p1, Lio/sentry/protocol/Device;->A:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Device;->A:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lio/sentry/protocol/Device;->B:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Device;->B:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lio/sentry/protocol/Device;->D:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Device;->D:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lio/sentry/protocol/Device;->E:Ljava/lang/Float;

    iput-object v0, p0, Lio/sentry/protocol/Device;->E:Ljava/lang/Float;

    .line 30
    iget-object v0, p1, Lio/sentry/protocol/Device;->h:Ljava/lang/Float;

    iput-object v0, p0, Lio/sentry/protocol/Device;->h:Ljava/lang/Float;

    .line 31
    iget-object v0, p1, Lio/sentry/protocol/Device;->g:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lio/sentry/protocol/Device;->g:[Ljava/lang/String;

    .line 33
    iget-object v0, p1, Lio/sentry/protocol/Device;->C:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/protocol/Device;->C:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lio/sentry/protocol/Device;->z:Ljava/util/TimeZone;

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/TimeZone;

    :cond_1
    iput-object v1, p0, Lio/sentry/protocol/Device;->z:Ljava/util/TimeZone;

    .line 36
    iget-object p1, p1, Lio/sentry/protocol/Device;->F:Ljava/util/Map;

    invoke-static {p1}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/protocol/Device;->F:Ljava/util/Map;

    return-void
.end method

.method static synthetic A(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic B(Lio/sentry/protocol/Device;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->g:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic C(Lio/sentry/protocol/Device;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->h:Ljava/lang/Float;

    return-object p1
.end method

.method static synthetic D(Lio/sentry/protocol/Device;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->i:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic E(Lio/sentry/protocol/Device;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->j:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lio/sentry/protocol/Device;Lio/sentry/protocol/Device$DeviceOrientation;)Lio/sentry/protocol/Device$DeviceOrientation;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->k:Lio/sentry/protocol/Device$DeviceOrientation;

    return-object p1
.end method

.method static synthetic c(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lio/sentry/protocol/Device;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->l:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic e(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->m:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic f(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->n:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic g(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->o:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic h(Lio/sentry/protocol/Device;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->p:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic i(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->q:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic j(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->r:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic k(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->s:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic l(Lio/sentry/protocol/Device;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->t:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic m(Lio/sentry/protocol/Device;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->u:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic n(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic o(Lio/sentry/protocol/Device;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->v:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic p(Lio/sentry/protocol/Device;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->w:Ljava/lang/Float;

    return-object p1
.end method

.method static synthetic q(Lio/sentry/protocol/Device;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->x:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic r(Lio/sentry/protocol/Device;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->y:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic s(Lio/sentry/protocol/Device;Ljava/util/TimeZone;)Ljava/util/TimeZone;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->z:Ljava/util/TimeZone;

    return-object p1
.end method

.method static synthetic t(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->A:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic u(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->B:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic v(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->D:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic w(Lio/sentry/protocol/Device;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->E:Ljava/lang/Float;

    return-object p1
.end method

.method static synthetic x(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->C:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic y(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic z(Lio/sentry/protocol/Device;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->e:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getArchs()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->g:[Ljava/lang/String;

    return-object v0
.end method

.method public getBatteryLevel()Ljava/lang/Float;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->h:Ljava/lang/Float;

    return-object v0
.end method

.method public getBatteryTemperature()Ljava/lang/Float;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->E:Ljava/lang/Float;

    return-object v0
.end method

.method public getBootTime()Ljava/util/Date;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->y:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->D:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalFreeStorage()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->t:Ljava/lang/Long;

    return-object v0
.end method

.method public getExternalStorageSize()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->s:Ljava/lang/Long;

    return-object v0
.end method

.method public getFamily()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getFreeMemory()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->n:Ljava/lang/Long;

    return-object v0
.end method

.method public getFreeStorage()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->r:Ljava/lang/Long;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->A:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->B:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->C:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getMemorySize()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->m:Ljava/lang/Long;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getModelId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()Lio/sentry/protocol/Device$DeviceOrientation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->k:Lio/sentry/protocol/Device$DeviceOrientation;

    return-object v0
.end method

.method public getScreenDensity()Ljava/lang/Float;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->w:Ljava/lang/Float;

    return-object v0
.end method

.method public getScreenDpi()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->x:Ljava/lang/Integer;

    return-object v0
.end method

.method public getScreenHeightPixels()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->v:Ljava/lang/Integer;

    return-object v0
.end method

.method public getScreenWidthPixels()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->u:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStorageSize()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->q:Ljava/lang/Long;

    return-object v0
.end method

.method public getTimezone()Ljava/util/TimeZone;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->z:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->F:Ljava/util/Map;

    return-object v0
.end method

.method public getUsableMemory()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->o:Ljava/lang/Long;

    return-object v0
.end method

.method public isCharging()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->i:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isLowMemory()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->p:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isOnline()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->j:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isSimulator()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/protocol/Device;->l:Ljava/lang/Boolean;

    return-object v0
.end method

.method public serialize(Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .param p1    # Lio/sentry/JsonObjectWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/sentry/ILogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/JsonWriter;->beginObject()Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 2
    iget-object v0, p0, Lio/sentry/protocol/Device;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "name"

    .line 3
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 4
    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/Device;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "manufacturer"

    .line 5
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/Device;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "brand"

    .line 7
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 8
    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/Device;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "family"

    .line 9
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 10
    :cond_3
    iget-object v0, p0, Lio/sentry/protocol/Device;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "model"

    .line 11
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 12
    :cond_4
    iget-object v0, p0, Lio/sentry/protocol/Device;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "model_id"

    .line 13
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 14
    :cond_5
    iget-object v0, p0, Lio/sentry/protocol/Device;->g:[Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "archs"

    .line 15
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->g:[Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lio/sentry/JsonObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 16
    :cond_6
    iget-object v0, p0, Lio/sentry/protocol/Device;->h:Ljava/lang/Float;

    if-eqz v0, :cond_7

    const-string v0, "battery_level"

    .line 17
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->h:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 18
    :cond_7
    iget-object v0, p0, Lio/sentry/protocol/Device;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    const-string v0, "charging"

    .line 19
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->i:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/Boolean;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 20
    :cond_8
    iget-object v0, p0, Lio/sentry/protocol/Device;->j:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    const-string v0, "online"

    .line 21
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->j:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/Boolean;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 22
    :cond_9
    iget-object v0, p0, Lio/sentry/protocol/Device;->k:Lio/sentry/protocol/Device$DeviceOrientation;

    if-eqz v0, :cond_a

    const-string v0, "orientation"

    .line 23
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->k:Lio/sentry/protocol/Device$DeviceOrientation;

    invoke-virtual {v0, p2, v1}, Lio/sentry/JsonObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 24
    :cond_a
    iget-object v0, p0, Lio/sentry/protocol/Device;->l:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    const-string v0, "simulator"

    .line 25
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->l:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/Boolean;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 26
    :cond_b
    iget-object v0, p0, Lio/sentry/protocol/Device;->m:Ljava/lang/Long;

    if-eqz v0, :cond_c

    const-string v0, "memory_size"

    .line 27
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->m:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 28
    :cond_c
    iget-object v0, p0, Lio/sentry/protocol/Device;->n:Ljava/lang/Long;

    if-eqz v0, :cond_d

    const-string v0, "free_memory"

    .line 29
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->n:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 30
    :cond_d
    iget-object v0, p0, Lio/sentry/protocol/Device;->o:Ljava/lang/Long;

    if-eqz v0, :cond_e

    const-string v0, "usable_memory"

    .line 31
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->o:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 32
    :cond_e
    iget-object v0, p0, Lio/sentry/protocol/Device;->p:Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    const-string v0, "low_memory"

    .line 33
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->p:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/Boolean;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 34
    :cond_f
    iget-object v0, p0, Lio/sentry/protocol/Device;->q:Ljava/lang/Long;

    if-eqz v0, :cond_10

    const-string v0, "storage_size"

    .line 35
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->q:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 36
    :cond_10
    iget-object v0, p0, Lio/sentry/protocol/Device;->r:Ljava/lang/Long;

    if-eqz v0, :cond_11

    const-string v0, "free_storage"

    .line 37
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->r:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 38
    :cond_11
    iget-object v0, p0, Lio/sentry/protocol/Device;->s:Ljava/lang/Long;

    if-eqz v0, :cond_12

    const-string v0, "external_storage_size"

    .line 39
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->s:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 40
    :cond_12
    iget-object v0, p0, Lio/sentry/protocol/Device;->t:Ljava/lang/Long;

    if-eqz v0, :cond_13

    const-string v0, "external_free_storage"

    .line 41
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->t:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 42
    :cond_13
    iget-object v0, p0, Lio/sentry/protocol/Device;->u:Ljava/lang/Integer;

    if-eqz v0, :cond_14

    const-string v0, "screen_width_pixels"

    .line 43
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->u:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 44
    :cond_14
    iget-object v0, p0, Lio/sentry/protocol/Device;->v:Ljava/lang/Integer;

    if-eqz v0, :cond_15

    const-string v0, "screen_height_pixels"

    .line 45
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->v:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 46
    :cond_15
    iget-object v0, p0, Lio/sentry/protocol/Device;->w:Ljava/lang/Float;

    if-eqz v0, :cond_16

    const-string v0, "screen_density"

    .line 47
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->w:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 48
    :cond_16
    iget-object v0, p0, Lio/sentry/protocol/Device;->x:Ljava/lang/Integer;

    if-eqz v0, :cond_17

    const-string v0, "screen_dpi"

    .line 49
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->x:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 50
    :cond_17
    iget-object v0, p0, Lio/sentry/protocol/Device;->y:Ljava/util/Date;

    if-eqz v0, :cond_18

    const-string v0, "boot_time"

    .line 51
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->y:Ljava/util/Date;

    invoke-virtual {v0, p2, v1}, Lio/sentry/JsonObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 52
    :cond_18
    iget-object v0, p0, Lio/sentry/protocol/Device;->z:Ljava/util/TimeZone;

    if-eqz v0, :cond_19

    const-string v0, "timezone"

    .line 53
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->z:Ljava/util/TimeZone;

    invoke-virtual {v0, p2, v1}, Lio/sentry/JsonObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    .line 54
    :cond_19
    iget-object v0, p0, Lio/sentry/protocol/Device;->A:Ljava/lang/String;

    if-eqz v0, :cond_1a

    const-string v0, "id"

    .line 55
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 56
    :cond_1a
    iget-object v0, p0, Lio/sentry/protocol/Device;->B:Ljava/lang/String;

    if-eqz v0, :cond_1b

    const-string v0, "language"

    .line 57
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 58
    :cond_1b
    iget-object v0, p0, Lio/sentry/protocol/Device;->D:Ljava/lang/String;

    if-eqz v0, :cond_1c

    const-string v0, "connection_type"

    .line 59
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 60
    :cond_1c
    iget-object v0, p0, Lio/sentry/protocol/Device;->E:Ljava/lang/Float;

    if-eqz v0, :cond_1d

    const-string v0, "battery_temperature"

    .line 61
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->E:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 62
    :cond_1d
    iget-object v0, p0, Lio/sentry/protocol/Device;->C:Ljava/lang/String;

    if-eqz v0, :cond_1e

    const-string v0, "locale"

    .line 63
    invoke-virtual {p1, v0}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Device;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 64
    :cond_1e
    iget-object v0, p0, Lio/sentry/protocol/Device;->F:Ljava/util/Map;

    if-eqz v0, :cond_1f

    .line 65
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    iget-object v2, p0, Lio/sentry/protocol/Device;->F:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 67
    invoke-virtual {p1, v1}, Lio/sentry/JsonObjectWriter;->name(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    move-result-object v1

    invoke-virtual {v1, p2, v2}, Lio/sentry/JsonObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/JsonObjectWriter;

    goto :goto_0

    .line 68
    :cond_1f
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/JsonWriter;->endObject()Lio/sentry/vendor/gson/stream/JsonWriter;

    return-void
.end method

.method public setArchs([Ljava/lang/String;)V
    .locals 0
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->g:[Ljava/lang/String;

    return-void
.end method

.method public setBatteryLevel(Ljava/lang/Float;)V
    .locals 0
    .param p1    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->h:Ljava/lang/Float;

    return-void
.end method

.method public setBatteryTemperature(Ljava/lang/Float;)V
    .locals 0
    .param p1    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->E:Ljava/lang/Float;

    return-void
.end method

.method public setBootTime(Ljava/util/Date;)V
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->y:Ljava/util/Date;

    return-void
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->c:Ljava/lang/String;

    return-void
.end method

.method public setCharging(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->i:Ljava/lang/Boolean;

    return-void
.end method

.method public setConnectionType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->D:Ljava/lang/String;

    return-void
.end method

.method public setExternalFreeStorage(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->t:Ljava/lang/Long;

    return-void
.end method

.method public setExternalStorageSize(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->s:Ljava/lang/Long;

    return-void
.end method

.method public setFamily(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->d:Ljava/lang/String;

    return-void
.end method

.method public setFreeMemory(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->n:Ljava/lang/Long;

    return-void
.end method

.method public setFreeStorage(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->r:Ljava/lang/Long;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->A:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->B:Ljava/lang/String;

    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->C:Ljava/lang/String;

    return-void
.end method

.method public setLowMemory(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->p:Ljava/lang/Boolean;

    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->b:Ljava/lang/String;

    return-void
.end method

.method public setMemorySize(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->m:Ljava/lang/Long;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->e:Ljava/lang/String;

    return-void
.end method

.method public setModelId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->f:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->a:Ljava/lang/String;

    return-void
.end method

.method public setOnline(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->j:Ljava/lang/Boolean;

    return-void
.end method

.method public setOrientation(Lio/sentry/protocol/Device$DeviceOrientation;)V
    .locals 0
    .param p1    # Lio/sentry/protocol/Device$DeviceOrientation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->k:Lio/sentry/protocol/Device$DeviceOrientation;

    return-void
.end method

.method public setScreenDensity(Ljava/lang/Float;)V
    .locals 0
    .param p1    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->w:Ljava/lang/Float;

    return-void
.end method

.method public setScreenDpi(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->x:Ljava/lang/Integer;

    return-void
.end method

.method public setScreenHeightPixels(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->v:Ljava/lang/Integer;

    return-void
.end method

.method public setScreenWidthPixels(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->u:Ljava/lang/Integer;

    return-void
.end method

.method public setSimulator(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->l:Ljava/lang/Boolean;

    return-void
.end method

.method public setStorageSize(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->q:Ljava/lang/Long;

    return-void
.end method

.method public setTimezone(Ljava/util/TimeZone;)V
    .locals 0
    .param p1    # Ljava/util/TimeZone;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->z:Ljava/util/TimeZone;

    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->F:Ljava/util/Map;

    return-void
.end method

.method public setUsableMemory(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/sentry/protocol/Device;->o:Ljava/lang/Long;

    return-void
.end method
