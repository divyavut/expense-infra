#### what is CDN
- cloud frnt s a content delivery network servce of amazon. aws have edge locations to cache the content across the globe. we can make use of this service to reduce the latency to our customer.


#### CDN(content Delivery Network)
1. origin (where original content is present)(where is your surce)
2. cache (Edge locations) ->(where Original data s cached)
3. Behavior(cache Behavior) --> only static data should chached like ,html,js,css, images.
4. only Get and PUt methods should be cached
5. Invalidation --> When new deployment happens, create invalidations to remove the cache data from edge locations and get the latest data from origin.


#### Purpose f CDN
- User can access the cached data that is in edge loactions with low latency. This way API request to the Original server will be less so performance of the system will be high.(this reduces the down time of server)

####
- Cloudfront is a content delivery network service of amaozn, aws have edge location location s to chae the content acrrose the globe, we can make use of this service to reduce the latency to our customer.
- origin --> source loaction of your contentn
- cache behavoiur ---> how and what to cache
- invalidation --> when there is an update , you can create invalidations , so that chached data in the edge location will be removed and new code wil get updated.

- cache order (developer will tell what to cache)
------------
   - /images/* --> expense-cdn.dev.divyavutakanti.com/images/* --> it will cached (CachingOptimized)

   - /static/* --> expense-cdn.dev.divyavutakanti.com/static/* --> it will cached (CachingOptimized)

   - efault ---> dynamic content --->expense-cdn.dev.divyavutakanti.com --> no cache (CachingDisabled)