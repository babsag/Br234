.class final synthetic Lcom/google/firebase/crashlytics/internal/model/serialization/c;
.super Ljava/lang/Object;
.source "CrashlyticsReportJsonTransform.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform$a;


# static fields
.field private static final a:Lcom/google/firebase/crashlytics/internal/model/serialization/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/serialization/c;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/serialization/c;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/serialization/c;->a:Lcom/google/firebase/crashlytics/internal/model/serialization/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform$a;
    .locals 1

    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/serialization/c;->a:Lcom/google/firebase/crashlytics/internal/model/serialization/c;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/util/JsonReader;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;->c(Landroid/util/JsonReader;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$CustomAttribute;

    move-result-object p1

    return-object p1
.end method
